@interface CUPairingDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CUPairingDaemon)init;
- (id)_copyHomeKitExWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)_copyHomeKitLocalPairingIDWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)_copyHomeKitWithOptionsHAP:(unint64_t)a3 error:(int *)a4;
- (id)_copyHomeKitWithOptionsKeychain:(unint64_t)a3 error:(int *)a4;
- (id)_copyIdentityWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)_copyOrCreateWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)_copyPairedPeersWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)_findHomeKitExPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5;
- (id)_findHomeKitPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5;
- (id)_findPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5;
- (id)copyIdentityWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)copyPairedPeersWithOptions:(unint64_t)a3 error:(int *)a4;
- (id)detailedDescription;
- (id)findPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5;
- (id)initStandalone;
- (int)_deleteIdentityWithOptions:(unint64_t)a3;
- (int)_removePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5;
- (int)_saveIdentity:(id)a3 options:(unint64_t)a4;
- (int)_savePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5;
- (int)deleteIdentityWithOptions:(unint64_t)a3;
- (int)removePairedPeer:(id)a3 options:(unint64_t)a4;
- (int)removePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5;
- (int)savePairedPeer:(id)a3 options:(unint64_t)a4;
- (int)savePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5;
- (void)_activate;
- (void)_connectionInvalidated:(id)a3;
- (void)_invalidate;
- (void)_removeDups:(id)a3;
- (void)_rpIdentityUpdate;
- (void)activate;
- (void)dealloc;
- (void)getIdentityWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)reset;
@end

@implementation CUPairingDaemon

- (int)_removePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(CUPairingDaemon *)self _findPairedPeer:v7 options:a4 & 0xFFFFFFFFFFFFFFFDLL error:0];
  if (!v8)
  {
    v8 = v7;
  }

  v9 = [v8 identifier];
  v10 = v9;
  if (!v9)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = [v9 UUIDString];
  if (!v18)
  {
LABEL_22:
    v31 = -6708;
    goto LABEL_20;
  }

  v19 = KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v11, v12, v13, v14, v15, v16, v17, *MEMORY[0x1E697AFF8]);
  if (v19)
  {
    v31 = v19;
  }

  else
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _removePairedPeer:options:removeAdminAllowed:]", 0x1Eu, "Removed %@\n", v20, v21, v22, v23, v8);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = self->_xpcConnections;
    v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v33 + 1) + 8 * i);
          if (*(v29 + 32) == 1)
          {
            v30 = [*(v29 + 40) remoteObjectProxy];
            [v30 pairedPeerRemoved:v8 options:a4];
          }
        }

        v26 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v26);
    }

    notify_post("com.apple.pairing.peerChanged");
    v31 = 0;
  }

LABEL_20:

  return v31;
}

- (int)removePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  LODWORD(v5) = [(CUPairingDaemon *)v9 _removePairedPeer:v8 options:a4 removeAdminAllowed:v5];
  objc_sync_exit(v9);

  return v5;
}

- (int)removePairedPeer:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  LODWORD(a4) = [(CUPairingDaemon *)v7 _removePairedPeer:v6 options:a4 removeAdminAllowed:0];
  objc_sync_exit(v7);

  return a4;
}

- (int)_savePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5
{
  v127 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v122 = 0;
  v8 = [v7 identifier];
  v9 = v8;
  v99 = v8;
  if (!v8)
  {
    v103 = 0;
    v100 = 0;
LABEL_102:
    v38 = 0;
    v35 = 0;
    v40 = 0;
    v97 = 0;
    v98 = 0;
    v13 = 0;
    v41 = 0;
    v42 = 0;
    v24 = 0;
    v45 = -6708;
    goto LABEL_109;
  }

  v8 = [(CUPairedPeer *)v8 UUIDString];
  v103 = v8;
  if (!v8)
  {
    v103 = 0;
    v100 = 0;
    v9 = 0;
    goto LABEL_102;
  }

  v93 = a5;
  v91 = self;
  v10 = [CUPairingDaemon _findPairedPeer:"_findPairedPeer:options:error:" options:v7 error:?];
  v100 = v10;
  if (!v10)
  {
    v10 = objc_alloc_init(CUPairedPeer);
    [(CUPairedPeer *)v10 setIdentifier:v9];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [(CUPairedPeer *)v10 info];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v101 = v11;
  v105 = v10;
  v14 = [v7 info];
  if (v14)
  {
    [(__CFString *)v13 addEntriesFromDictionary:v14];
  }

  v98 = v14;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v15 = [(__CFString *)v13 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v118 objects:v126 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v119;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v119 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v118 + 1) + 8 * i);
        v21 = [(__CFString *)v13 objectForKeyedSubscript:v20];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(__CFString *)v13 removeObjectForKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v118 objects:v126 count:16];
    }

    while (v17);
  }

  v23 = [(CUPairedPeer *)v105 acl];
  v24 = [v23 mutableCopy];

  Int64 = CFDictionaryGetInt64(v24, @"com.apple.admin", 0);
  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v102 = v7;
  v25 = [v7 acl];
  if (v25)
  {
    [(__CFDictionary *)v24 addEntriesFromDictionary:v25];
  }

  v97 = v25;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v26 = [(__CFDictionary *)v24 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v114 objects:v125 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v115;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v115 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v114 + 1) + 8 * j);
        v32 = [(__CFDictionary *)v24 objectForKeyedSubscript:v31];
        objc_opt_class();
        v33 = objc_opt_isKindOfClass();

        if (v33)
        {
          [(__CFDictionary *)v24 removeObjectForKey:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v114 objects:v125 count:16];
    }

    while (v28);
  }

  v34 = CFDictionaryGetInt64(v24, @"com.apple.admin", 0);
  if (Int64 && !v34 && !v93)
  {
    v38 = 0;
    v8 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v122 = -6773;
    v35 = v11;
    v7 = v102;
    v9 = v105;
    goto LABEL_99;
  }

  v35 = v11;
  v7 = v102;
  if ([(__CFDictionary *)v24 count])
  {
    [(__CFString *)v11 setObject:v24 forKeyedSubscript:@"acl"];
  }

  else
  {
    [(__CFString *)v11 removeObjectForKey:@"acl"];
  }

  v9 = v105;
  v36 = [v102 altIRK];
  if (v36)
  {
    v37 = v36;
    [(CUPairedPeer *)v105 setAltIRK:v36];
  }

  else
  {
    v37 = [(CUPairedPeer *)v105 altIRK];
    if (!v37)
    {
      goto LABEL_41;
    }
  }

  [(__CFString *)v11 setObject:v37 forKeyedSubscript:@"altIRK"];

LABEL_41:
  v38 = [v102 model];
  if (!v38)
  {
    v39 = [(__CFString *)v13 objectForKeyedSubscript:@"model"];
    if (v39)
    {
      v38 = v39;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
LABEL_52:
        v45 = -6756;
LABEL_109:
        v122 = v45;
        goto LABEL_99;
      }
    }

    else
    {
      v43 = [(CUPairedPeer *)v105 model];
      if (v43)
      {
        v38 = v43;
      }

      else
      {
        v38 = &stru_1F068B090;
      }
    }
  }

  [(CUPairedPeer *)v105 setModel:v38];
  [(__CFString *)v13 setObject:v38 forKeyedSubscript:@"model"];
  v42 = [v102 name];
  if (!v42)
  {
    v44 = [(__CFString *)v13 objectForKeyedSubscript:@"name"];
    if (v44)
    {
      v42 = v44;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        v40 = 0;
        v41 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v46 = [(CUPairedPeer *)v105 name];
      if (v46)
      {
        v42 = v46;
      }

      else
      {
        v42 = &stru_1F068B090;
      }
    }
  }

  [(CUPairedPeer *)v105 setName:v42];
  [(__CFString *)v13 removeObjectForKey:@"name"];
  v47 = [v102 publicKey];
  if (v47)
  {
    v41 = v47;
    [(CUPairedPeer *)v105 setPublicKey:v47];
  }

  else
  {
    v8 = [(CUPairedPeer *)v105 publicKey];
    v41 = v8;
    if (!v8)
    {
      v40 = 0;
      if (v100)
      {
        v45 = -6768;
      }

      else
      {
        v45 = -25300;
      }

      goto LABEL_109;
    }
  }

  [(__CFString *)v11 setObject:v41 forKeyedSubscript:@"pk"];
  [(CUPairedPeer *)v105 setInfo:v13];
  v48 = OPACKEncoderCreateDataMutable(v13, 0, &v122);
  v40 = v48;
  if (v122)
  {
    v8 = 0;
    goto LABEL_99;
  }

  if (!v48)
  {
    v8 = 0;
    goto LABEL_108;
  }

  v8 = OPACKEncoderCreateDataMutable(v11, 0, &v122);
  if (v122)
  {
    goto LABEL_99;
  }

  v96 = v8;
  if (!v8)
  {
LABEL_108:
    v45 = -6762;
    goto LABEL_109;
  }

  v94 = v40;
  v92 = *MEMORY[0x1E697AFF8];
  v55 = CFCreateF(&v122, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v49, v50, v51, v52, v53, v54, *MEMORY[0x1E697AFF8]);
  v62 = v55;
  if (!v122)
  {
    v90 = v55;
    updated = KeychainUpdateFormatted(v55, "{%kO=%O%kO=%O%kO=%O%kO=%O}", v56, v57, v58, v59, v60, v61, *MEMORY[0x1E697ACE0]);
    v122 = updated;
    if (updated)
    {
      v62 = v90;
      if (updated != -25300)
      {
        goto LABEL_96;
      }

      v70 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v64, v65, v66, v67, v68, v69, v92);
      v62 = v90;
      v122 = v70;
      if (v70)
      {
        goto LABEL_96;
      }

      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _savePairedPeer:options:removeAdminAllowed:]", 0x1Eu, "Saved %@\n", v71, v72, v73, v74, v102);
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v75 = v91->_xpcConnections;
      v82 = [(NSMutableSet *)v75 countByEnumeratingWithState:&v106 objects:v123 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v107;
        do
        {
          for (k = 0; k != v83; ++k)
          {
            if (*v107 != v84)
            {
              objc_enumerationMutation(v75);
            }

            v86 = *(*(&v106 + 1) + 8 * k);
            if (*(v86 + 32) == 1)
            {
              v87 = [*(v86 + 40) remoteObjectProxy];
              [v87 pairedPeerAdded:v105 options:a4];
            }
          }

          v83 = [(NSMutableSet *)v75 countByEnumeratingWithState:&v106 objects:v123 count:16];
        }

        while (v83);
      }
    }

    else
    {
      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _savePairedPeer:options:removeAdminAllowed:]", 0x1Eu, "Updated %@\n", v66, v67, v68, v69, v105);
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v75 = v91->_xpcConnections;
      v76 = [(NSMutableSet *)v75 countByEnumeratingWithState:&v110 objects:v124 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v111;
        do
        {
          for (m = 0; m != v77; ++m)
          {
            if (*v111 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v110 + 1) + 8 * m);
            if (*(v80 + 32) == 1)
            {
              v81 = [*(v80 + 40) remoteObjectProxy];
              [v81 pairedPeerChanged:v105 options:a4];
            }
          }

          v77 = [(NSMutableSet *)v75 countByEnumeratingWithState:&v110 objects:v124 count:16];
        }

        while (v77);
      }
    }

    notify_post("com.apple.pairing.peerChanged");
    v62 = v90;
  }

LABEL_96:
  v9 = v105;
  v35 = v101;
  if (v62)
  {
    CFRelease(v62);
  }

  v7 = v102;
  v40 = v94;
  v8 = v96;
LABEL_99:
  v88 = v122;

  return v88;
}

- (int)savePairedPeer:(id)a3 options:(unint64_t)a4 removeAdminAllowed:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  LODWORD(v5) = [(CUPairingDaemon *)v9 _savePairedPeer:v8 options:a4 removeAdminAllowed:v5];
  objc_sync_exit(v9);

  return v5;
}

- (int)savePairedPeer:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  LODWORD(a4) = [(CUPairingDaemon *)v7 _savePairedPeer:v6 options:a4 removeAdminAllowed:0];
  objc_sync_exit(v7);

  return a4;
}

- (id)_findPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v66 = 0;
  v8 = [v7 identifier];
  v61 = v7;
  v59 = v8;
  if (!v8)
  {
    v31 = [v7 publicKey];
    if (v31)
    {
      v32 = [(CUPairingDaemon *)self _copyPairedPeersWithOptions:a4 error:&v66];
      v33 = v32;
      if (v66)
      {
        v42 = 0;
        goto LABEL_44;
      }

      if (v32)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = 0;
          v37 = *v63;
LABEL_19:
          v38 = 0;
          v39 = v36;
          while (1)
          {
            if (*v63 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v36 = *(*(&v62 + 1) + 8 * v38);

            v40 = [v36 publicKey];
            v41 = [v40 isEqual:v31];

            if (v41)
            {
              break;
            }

            ++v38;
            v39 = v36;
            if (v35 == v38)
            {
              v35 = [v33 countByEnumeratingWithState:&v62 objects:v67 count:16];
              if (v35)
              {
                goto LABEL_19;
              }

              goto LABEL_26;
            }
          }

          v42 = v36;

          if (!v42)
          {
            goto LABEL_27;
          }

          goto LABEL_44;
        }

LABEL_26:

LABEL_27:
        v42 = 0;
        v43 = -25300;
      }

      else
      {
        v42 = 0;
        v43 = -6762;
      }
    }

    else
    {
      v42 = 0;
      v33 = 0;
      v43 = -6708;
    }

    v66 = v43;
LABEL_44:

    v16 = 0;
    v29 = 0;
    v18 = 0;
    v46 = 0;
    v50 = 0;
    v27 = 0;
    v48 = 0;
    v19 = v42;
    goto LABEL_48;
  }

  v9 = v8;
  v16 = [v8 UUIDString];
  if (v16)
  {
    v17 = KeychainCopyMatchingFormatted(&v66, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v10, v11, v12, v13, v14, v15, *MEMORY[0x1E697AFF8]);
    v18 = v17;
    if (v66)
    {
      v42 = 0;
      v29 = 0;
      v19 = 0;
      v46 = 0;
      v50 = 0;
      v27 = 0;
      v48 = 0;
      goto LABEL_48;
    }

    if (!v17)
    {
      v42 = 0;
      v29 = 0;
      v19 = 0;
      v46 = 0;
      v50 = 0;
      v27 = 0;
      v48 = 0;
LABEL_66:
      v57 = -6762;
      goto LABEL_67;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v19 setIdentifier:v9];
      v20 = *MEMORY[0x1E697ADC8];
      TypeID = CFStringGetTypeID();
      v22 = CFDictionaryGetTypedValue(v18, v20, TypeID, 0);
      if (v22)
      {
        [(CUPairedPeer *)v19 setName:v22];
      }

      v23 = *MEMORY[0x1E697ACF0];
      v24 = CFDataGetTypeID();
      v25 = CFDictionaryGetTypedValue(v18, v23, v24, 0);
      v26 = v25;
      if (v25)
      {
        v27 = OPACKDecodeData(v25, 0, 0);
        if (v27)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = CFStringGetTypeID();
            v29 = CFDictionaryGetTypedValue(v27, @"model", v28, 0);

            if (v29)
            {
              [(CUPairedPeer *)v19 setModel:v29];
            }

            v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v27];
            [v30 removeObjectForKey:@"model"];
            [(CUPairedPeer *)v19 setInfo:v30];

LABEL_31:
            v44 = *MEMORY[0x1E697B3C0];
            v45 = CFDataGetTypeID();
            v46 = CFDictionaryGetTypedValue(v18, v44, v45, &v66);

            if (v66)
            {
              v42 = 0;
              v50 = 0;
              v48 = 0;
              goto LABEL_48;
            }

            if (v46)
            {
              v47 = OPACKDecodeData(v46, 0, &v66);
              v48 = v47;
              if (v66)
              {
                v42 = 0;
                v50 = 0;
                goto LABEL_48;
              }

              if (v47)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v49 = CFDictionaryGetTypeID();
                  v50 = CFDictionaryGetTypedValue(v48, @"acl", v49, 0);
                  if (v50)
                  {
                    [(CUPairedPeer *)v19 setAcl:v50];
                  }

                  v51 = CFDataGetTypeID();
                  v52 = CFDictionaryGetTypedValue(v48, @"pk", v51, &v66);

                  if (v66)
                  {
                    v42 = 0;
LABEL_47:
                    v46 = v52;
                    goto LABEL_48;
                  }

                  if (v52)
                  {
                    [(CUPairedPeer *)v19 setPublicKey:v52];
                    if ((a4 & 2) != 0)
                    {
                      v53 = CFDataGetTypeID();
                      v54 = CFDictionaryGetTypedValue(v48, @"altIRK", v53, 0);

                      if (v54)
                      {
                        [(CUPairedPeer *)v19 setAltIRK:v54];
                        v52 = v54;
                      }

                      else
                      {
                        v52 = 0;
                      }
                    }

                    v42 = v19;
                    v19 = v42;
                    goto LABEL_47;
                  }

                  v42 = 0;
                  v46 = 0;
                  goto LABEL_66;
                }

                v42 = 0;
                v50 = 0;
                v58 = -6756;
LABEL_63:
                v66 = v58;
                goto LABEL_48;
              }

              v42 = 0;
              v50 = 0;
            }

            else
            {
              v42 = 0;
              v50 = 0;
              v48 = 0;
            }

            v58 = -6762;
            goto LABEL_63;
          }
        }
      }

      else
      {
        v27 = 0;
      }

      v29 = v22;
      goto LABEL_31;
    }

    v42 = 0;
    v29 = 0;
    v19 = 0;
    v46 = 0;
    v50 = 0;
    v27 = 0;
    v48 = 0;
    v57 = -6756;
  }

  else
  {
    v42 = 0;
    v29 = 0;
    v18 = 0;
    v19 = 0;
    v46 = 0;
    v50 = 0;
    v27 = 0;
    v48 = 0;
    v57 = -6708;
  }

LABEL_67:
  v66 = v57;
LABEL_48:
  if (a5)
  {
    *a5 = v66;
  }

  v55 = v42;

  return v55;
}

- (id)_findHomeKitExPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5
{
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5769;
  v30 = __Block_byref_object_dispose__5770;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5769;
  v24 = __Block_byref_object_dispose__5770;
  v25 = 0;
  v9 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__CUPairingDaemon__findHomeKitExPairedPeer_options_error___block_invoke;
  v16[3] = &unk_1E73A4C30;
  v18 = &v26;
  v19 = &v20;
  v11 = v9;
  v17 = v11;
  [(CUHomeKitManager *)homeKitManager findPairedPeer:v8 options:a4 completion:v16];
  v12 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    LODWORD(v13) = -6722;
  }

  else
  {
    v13 = v21[5];
    if (v13)
    {
      LODWORD(v13) = NSErrorToOSStatusEx(v13, 0);
    }
  }

  if (a5)
  {
    *a5 = v13;
  }

  v14 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __58__CUPairingDaemon__findHomeKitExPairedPeer_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_findHomeKitPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5
{
  v8 = [a3 identifier];
  if (!v8)
  {
    v14 = 0;
    v10 = 0;
    v13 = 0;
    v15 = -6708;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [(CUPairingDaemon *)self _copyHomeKitWithOptions:a4 error:0];
  v10 = v9;
  if (v9 && ([v9 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, v12))
  {
    v13 = [v10 publicKey];
    if (v13)
    {
      v14 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v14 setIdentifier:v8];
      [(CUPairedPeer *)v14 setPublicKey:v13];
      v15 = 0;
      if (!a5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = 0;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = -25300;
  if (a5)
  {
LABEL_9:
    *a5 = v15;
  }

LABEL_10:
  v16 = v14;

  return v14;
}

- (id)findPairedPeer:(id)a3 options:(unint64_t)a4 error:(int *)a5
{
  v8 = a3;
  if ((a4 & 8) != 0)
  {
    v9 = [(CUPairingDaemon *)self _findHomeKitPairedPeer:v8 options:a4 error:a5];
    goto LABEL_5;
  }

  if ((a4 & 0x130) != 0)
  {
    v9 = [(CUPairingDaemon *)self _findHomeKitExPairedPeer:v8 options:a4 error:a5];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v12 = self;
  objc_sync_enter(v12);
  v10 = [(CUPairingDaemon *)v12 _findPairedPeer:v8 options:a4 error:a5];
  objc_sync_exit(v12);

LABEL_6:

  return v10;
}

- (void)_removeDups:(id)a3
{
  v15 = a3;
  v3 = [v15 count];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  for (i = 0; i < v4; ++i)
  {
    v6 = [v15 objectAtIndexedSubscript:i];
    v7 = [v6 info];
    v8 = [v7 objectForKeyedSubscript:@"mac"];

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = [v6 dateModified];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = 0;
    while (i == v10)
    {
LABEL_13:
      if (v4 == ++v10)
      {
        goto LABEL_14;
      }
    }

    v11 = [v15 objectAtIndexedSubscript:v10];
    v12 = [v11 info];
    v13 = [v12 objectForKeyedSubscript:@"mac"];

    if (!v13 || ![v13 isEqual:v8])
    {
      goto LABEL_12;
    }

    v14 = [v11 dateModified];
    if (!v14 || [v9 compare:v14] >= 1)
    {

LABEL_12:
      goto LABEL_13;
    }

    [v15 removeObjectAtIndex:i--];
    --v4;

LABEL_14:
LABEL_15:
  }

LABEL_18:
}

- (id)_copyPairedPeersWithOptions:(unint64_t)a3 error:(int *)a4
{
  v8 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v62 = a3;
  v61 = *MEMORY[0x1E697AFF8];
  v10 = KeychainCopyMatchingFormatted(&v69, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", a3, a4, v4, v5, v6, v7, *MEMORY[0x1E697AFF8]);
  v11 = v10;
  if (v69)
  {
    v49 = 0;
    v63 = 0;
    if (v69 == -25300)
    {
      v63 = 0;
      v69 = 0;
      v49 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_60;
  }

  if (!v10)
  {
    v49 = 0;
    v63 = 0;
    v52 = -6762;
LABEL_67:
    v69 = v52;
    goto LABEL_60;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v49 = 0;
    v63 = 0;
    v52 = -6756;
    goto LABEL_67;
  }

  v53 = self;
  v55 = v8;
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v54 = v11;
  obj = v11;
  v64 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (!v64)
  {
    goto LABEL_39;
  }

  v60 = *v66;
  v12 = *MEMORY[0x1E697AC30];
  v59 = *MEMORY[0x1E697ADD0];
  v58 = *MEMORY[0x1E697ADC8];
  v57 = *MEMORY[0x1E697ACF0];
  while (2)
  {
    for (i = 0; i != v64; ++i)
    {
      if (*v66 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v65 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v69 = -6756;
LABEL_58:
        v11 = v54;
        v8 = v55;
        goto LABEL_59;
      }

      v15 = objc_alloc_init(CUPairedPeer);
      TypeID = CFStringGetTypeID();
      v17 = CFDictionaryGetTypedValue(v14, v12, TypeID, &v69);
      v18 = v17;
      if (v69)
      {
        goto LABEL_42;
      }

      if (!v17)
      {
        v69 = -6762;
        goto LABEL_57;
      }

      v19 = [v17 UTF8String];
      v69 = StringToUUIDEx(v19, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v70, v20, v21, v22);
      if (v69)
      {
LABEL_42:
        v32 = 0;
LABEL_43:
        v36 = 0;
        v34 = 0;
LABEL_54:
        v11 = v54;
        v8 = v55;

LABEL_59:
        v49 = 0;
        goto LABEL_60;
      }

      v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v70];
      [(CUPairedPeer *)v15 setIdentifier:v23];

      v24 = CFDateGetTypeID();
      [(CUPairedPeer *)v15 setDateModified:CFDictionaryGetTypedValue(v14, v59, v24, 0)];
      v31 = KeychainCopyMatchingFormatted(&v69, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v25, v26, v27, v28, v29, v30, v61);
      v32 = v31;
      if (v69)
      {
        goto LABEL_43;
      }

      if (!v31)
      {
        v69 = -6762;
        goto LABEL_56;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = -6756;
        goto LABEL_50;
      }

      v33 = OPACKDecodeData(v32, 0, &v69);
      v34 = v33;
      if (v69)
      {
        v36 = 0;
        goto LABEL_54;
      }

      if (!v33)
      {
        v50 = -6762;
LABEL_50:
        v69 = v50;
LABEL_52:

LABEL_56:
LABEL_57:

        goto LABEL_58;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v69 = -6756;

        goto LABEL_52;
      }

      v35 = CFDictionaryGetTypeID();
      v36 = CFDictionaryGetTypedValue(v34, @"acl", v35, 0);
      if (v36)
      {
        [(CUPairedPeer *)v15 setAcl:v36];
      }

      v37 = CFDataGetTypeID();
      v38 = CFDictionaryGetTypedValue(v34, @"pk", v37, &v69);

      if (v69)
      {
        v32 = v38;
        goto LABEL_54;
      }

      if (!v38)
      {
        v69 = -6762;

        goto LABEL_56;
      }

      [(CUPairedPeer *)v15 setPublicKey:v38];
      v39 = CFStringGetTypeID();
      v40 = CFDictionaryGetTypedValue(v14, v58, v39, 0);
      if (v40)
      {
        [(CUPairedPeer *)v15 setName:v40];
      }

      v41 = CFDataGetTypeID();
      v42 = CFDictionaryGetTypedValue(v14, v57, v41, 0);

      if (!v42)
      {
        v43 = 0;
LABEL_32:
        v45 = v40;
        goto LABEL_33;
      }

      v43 = OPACKDecodeData(v42, 0, 0);
      if (!v43)
      {
        goto LABEL_32;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v44 = CFStringGetTypeID();
      v45 = CFDictionaryGetTypedValue(v43, @"model", v44, 0);

      if (v45)
      {
        [(CUPairedPeer *)v15 setModel:v45];
      }

      v46 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v43];
      [v46 removeObjectForKey:@"model"];
      [(CUPairedPeer *)v15 setInfo:v46];

LABEL_33:
      if ((v62 & 2) != 0)
      {
        v47 = CFDataGetTypeID();
        v48 = CFDictionaryGetTypedValue(v34, @"altIRK", v47, 0);

        if (v48)
        {
          [(CUPairedPeer *)v15 setAltIRK:v48];
          v42 = v48;
        }

        else
        {
          v42 = 0;
        }
      }

      [v63 addObject:v15];
    }

    v64 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_39:

  if (v62 < 0)
  {
    [(CUPairingDaemon *)v53 _removeDups:v63];
  }

  v49 = v63;
  v69 = 0;
  v63 = v49;
  v11 = v54;
  v8 = v55;
LABEL_60:
  if (v8)
  {
    *v8 = v69;
  }

  return v49;
}

- (id)copyPairedPeersWithOptions:(unint64_t)a3 error:(int *)a4
{
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(CUPairingDaemon *)v6 _copyPairedPeersWithOptions:a3 error:a4];
  objc_sync_exit(v6);

  return v7;
}

- (int)_saveIdentity:(id)a3 options:(unint64_t)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 0x1Eu, "Save %@\n", v6, v7, v8, v9, v10);
  }

  v50 = 0;
  v12 = [v10 identifier];
  v13 = [v12 UUIDString];

  if (!v13)
  {
    v21 = 0;
    v24 = 0;
    v18 = 0;
    v25 = 0;
    v42 = -6708;
LABEL_50:
    v50 = v42;
    goto LABEL_41;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = [v10 altIRK];
  if (v19)
  {
    [(__CFString *)v18 setObject:v19 forKeyedSubscript:@"altIRK"];
  }

  v20 = [v10 publicKey];

  if (v20)
  {
    [(__CFString *)v18 setObject:v20 forKeyedSubscript:@"pk"];
  }

  v21 = [v10 secretKey];

  if (v21)
  {
    [(__CFString *)v18 setObject:v21 forKeyedSubscript:@"sk"];
  }

  v24 = OPACKEncoderCreateDataMutable(v18, 0, &v50);
  if (v50)
  {
    v25 = 0;
    goto LABEL_41;
  }

  if (!v24)
  {
    v25 = 0;
    v42 = -6762;
    goto LABEL_50;
  }

  v43 = v21;
  v45 = v24;
  v26 = *MEMORY[0x1E697AFF8];
  v44 = v13;
  v25 = CFCreateF(&v50, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v22, v23, v14, v15, v16, v17, *MEMORY[0x1E697AFF8]);
  if (!v50)
  {
    updated = KeychainUpdateFormatted(v25, "{%kO=%O%kO=%O%kO=%O}", v27, v28, v14, v15, v16, v17, *MEMORY[0x1E697ACE0]);
    v50 = updated;
    if (updated)
    {
      if (updated != -25300)
      {
        v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
        v21 = v43;
        goto LABEL_41;
      }

      v50 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v30, v31, v14, v15, v16, v17, v26);
      v21 = v43;
      if (v50)
      {
        v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
        goto LABEL_41;
      }

      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 0x1Eu, "Saved %@\n", v14, v15, v16, v17, v10);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = self->_xpcConnections;
      v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v46 + 1) + 8 * i);
            if (*(v37 + 32) == 1)
            {
              v38 = [*(v37 + 40) remoteObjectProxy];
              [v38 pairingIdentityCreated:v10 options:a4];
            }
          }

          v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v34);
      }

      notify_post("com.apple.pairing.identityChanged");
      v13 = v44;
      v24 = v45;
      v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
    }

    else
    {
      v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
      v21 = v43;
      if (gLogCategory_CUPairingDaemon > 30)
      {
        goto LABEL_45;
      }

      if (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 0x1Eu, "Updated %@\n", v14, v15, v16, v17, v10);
      }
    }

    if (!v50)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  v21 = v43;
LABEL_41:
  v39 = v11[762];
  if (v39 <= 60 && (v39 != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 0x3Cu, "### Save %@ failed: %#m\n", v14, v15, v16, v17, v10);
  }

LABEL_45:
  if (v25)
  {
    CFRelease(v25);
  }

  v40 = v50;

  return v40;
}

- (int)_deleteIdentityWithOptions:(unint64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%O%kO=%O}", a2, a3, v3, v4, v5, v6, v7, *MEMORY[0x1E697AFF8]);
  if (!v14)
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _deleteIdentityWithOptions:]", 0x1Eu, "Deleted identity\n", v10, v11, v12, v13, v23);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_xpcConnections;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          if (*(v20 + 32) == 1)
          {
            v21 = [*(v20 + 40) remoteObjectProxy];
            [v21 pairingIdentityDeletedWithOptions:a3];
          }
        }

        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    notify_post("com.apple.pairing.identityChanged");
  }

  return v14;
}

- (int)deleteIdentityWithOptions:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  LODWORD(a3) = [(CUPairingDaemon *)v4 _deleteIdentityWithOptions:a3];
  objc_sync_exit(v4);

  return a3;
}

- (id)_copyIdentityWithOptions:(unint64_t)a3 error:(int *)a4
{
  v9 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v10 = KeychainCopyMatchingFormatted(&v27, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", a3, a4, v4, v5, v6, v7, *MEMORY[0x1E697AFF8]);
  v11 = v27;
  if (v27)
  {
    v24 = 0;
    v12 = 0;
    goto LABEL_27;
  }

  if (!v10)
  {
    v24 = 0;
    v12 = 0;
    v17 = 0;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = 0;
    v12 = 0;
    v17 = 0;
    v18 = 0;
LABEL_36:
    v11 = -6756;
    goto LABEL_40;
  }

  v12 = objc_alloc_init(CUPairingIdentity);
  Value = CFDictionaryGetValue(v10, *MEMORY[0x1E697AC30]);
  if (Value)
  {
    v11 = CFGetUUIDEx(Value, 0, v28);
    v27 = v11;
    if (!v11)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v28];
      [(CUPairingIdentity *)v12 setIdentifier:v14];

      v15 = *MEMORY[0x1E697B3C0];
      TypeID = CFDataGetTypeID();
      v17 = CFDictionaryGetTypedValue(v10, v15, TypeID, &v27);
      v11 = v27;
      if (!v27)
      {
        if (v17)
        {
          v18 = OPACKDecodeData(v17, 0, &v27);
          v11 = v27;
          if (v27)
          {
            goto LABEL_24;
          }

          if (!v18)
          {
LABEL_25:
            v24 = 0;
LABEL_39:
            v11 = -6762;
            goto LABEL_40;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = CFDataGetTypeID();
            v20 = CFDictionaryGetTypedValue(v18, @"pk", v19, &v27);

            v11 = v27;
            if (v27)
            {
              v24 = 0;
              v17 = v20;
              goto LABEL_21;
            }

            if (!v20)
            {
              v24 = 0;
              v17 = 0;
              goto LABEL_39;
            }

            [(CUPairingIdentity *)v12 setPublicKey:v20];
            if ((v9 & 2) == 0)
            {
              v17 = v20;
LABEL_20:
              v24 = v12;
              v11 = 0;
              v27 = 0;
              v12 = v24;
              goto LABEL_21;
            }

            v21 = CFDataGetTypeID();
            v22 = CFDictionaryGetTypedValue(v18, @"altIRK", v21, 0);

            if (v22)
            {
              [(CUPairingIdentity *)v12 setAltIRK:v22];
            }

            v23 = CFDataGetTypeID();
            v17 = CFDictionaryGetTypedValue(v18, @"sk", v23, &v27);

            v11 = v27;
            if (!v27)
            {
              if (v17)
              {
                [(CUPairingIdentity *)v12 setSecretKey:v17];
                goto LABEL_20;
              }

              goto LABEL_25;
            }

LABEL_24:
            v24 = 0;
            goto LABEL_21;
          }

          v24 = 0;
          goto LABEL_36;
        }

        v24 = 0;
LABEL_34:
        v18 = 0;
        goto LABEL_39;
      }

      v24 = 0;
LABEL_32:
      v18 = 0;
      goto LABEL_21;
    }

    v24 = 0;
LABEL_27:
    v17 = 0;
    goto LABEL_32;
  }

  v24 = 0;
  v17 = 0;
  v18 = 0;
  v11 = -6727;
LABEL_40:
  v27 = v11;
LABEL_21:
  if (a4)
  {
    *a4 = v11;
  }

  v25 = v24;

  return v25;
}

- (id)_copyOrCreateWithOptions:(unint64_t)a3 error:(int *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v7 = [(CUPairingDaemon *)self _copyIdentityWithOptions:a3 error:&v39];
  v8 = v7;
  if (v7 && !v39)
  {
    if ((a3 & 2) != 0)
    {
      v9 = [(CUPairingIdentity *)v7 altIRK];
      if (!v9)
      {
        if ((a3 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }

      v10 = v9;
      if ((a3 & 4) != 0 && self->_rpSelfIRK)
      {
        v11 = [(CUPairingIdentity *)v8 altIRK];
        v12 = [v11 isEqual:self->_rpSelfIRK];

        if (v12)
        {
          goto LABEL_38;
        }

LABEL_21:
        if (self->_rpSelfIRK)
        {
          [(CUPairingIdentity *)v8 setAltIRK:?];
          if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 0x1Eu, "Updating identity for RP IRK: %@\n", v23, v24, v25, v26, v8);
          }

          goto LABEL_37;
        }

LABEL_30:
        RandomBytes(bytes, 0x10uLL);
        ccsha512_di();
        cchkdf();
        v28 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:{16, bytes}];
        [(CUPairingIdentity *)v8 setAltIRK:v28];

        if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 0x1Eu, "Updating identity for missing IRK: %@\n", v29, v30, v31, v32, v8);
        }

LABEL_37:
        v39 = [(CUPairingDaemon *)self _saveIdentity:v8 options:a3];
        if (v39)
        {
          v13 = 0;
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

LABEL_38:
    v27 = v8;
LABEL_39:
    v13 = v27;
    v8 = v27;
    goto LABEL_40;
  }

  v13 = 0;
  if (!v39)
  {
    v39 = -6762;
    goto LABEL_40;
  }

  if ((a3 & 1) != 0 && v39 != -25293)
  {
    v14 = objc_alloc_init(CUPairingIdentity);

    v15 = [MEMORY[0x1E696AFB0] UUID];
    [(CUPairingIdentity *)v14 setIdentifier:v15];

    if ((a3 & 4) != 0 && self->_rpSelfIRK)
    {
      [(CUPairingIdentity *)v14 setAltIRK:?];
    }

    else
    {
      RandomBytes(bytes, 0x10uLL);
      ccsha512_di();
      cchkdf();
      v16 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:{16, bytes}];
      [(CUPairingIdentity *)v14 setAltIRK:v16];
    }

    cced25519_make_key_pair_compat(bytes, __s);
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:32];
    [(CUPairingIdentity *)v14 setPublicKey:v17];

    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:__s length:32];
    [(CUPairingIdentity *)v14 setSecretKey:v18];

    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 0x1Eu, "Created %@\n", v19, v20, v21, v22, v14);
    }

    v39 = [(CUPairingDaemon *)self _saveIdentity:v14 options:a3];
    if (v39)
    {
      v13 = 0;
      v8 = v14;
      goto LABEL_40;
    }

    if ((a3 & 2) == 0)
    {
      [(CUPairingIdentity *)v14 setAltIRK:0];
      [(CUPairingIdentity *)v14 setSecretKey:0];
    }

    v27 = v14;
    goto LABEL_39;
  }

LABEL_40:
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v37 = v39;
  if (v39 != -25300 && v39 && gLogCategory_CUPairingDaemon <= 60)
  {
    if (gLogCategory_CUPairingDaemon != -1)
    {
LABEL_44:
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 0x3Cu, "### CopyIdentity failed: %#m\n", v33, v34, v35, v36, v37);
      goto LABEL_46;
    }

    if (_LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu))
    {
      v37 = v39;
      goto LABEL_44;
    }
  }

LABEL_46:
  if (a4)
  {
    *a4 = v39;
  }

  return v13;
}

- (id)_copyHomeKitExWithOptions:(unint64_t)a3 error:(int *)a4
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5769;
  v29 = __Block_byref_object_dispose__5770;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5769;
  v23 = __Block_byref_object_dispose__5770;
  v24 = 0;
  v7 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__CUPairingDaemon__copyHomeKitExWithOptions_error___block_invoke;
  v15[3] = &unk_1E73A4C58;
  v17 = &v25;
  v18 = &v19;
  v9 = v7;
  v16 = v9;
  [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:a3 completion:v15];
  if ((a3 & 0x200) != 0)
  {
    v10 = 3000000000;
  }

  else
  {
    v10 = 30000000000;
  }

  v11 = dispatch_time(0, v10);
  if (dispatch_semaphore_wait(v9, v11))
  {
    LODWORD(v12) = -6722;
  }

  else
  {
    v12 = v20[5];
    if (v12)
    {
      LODWORD(v12) = NSErrorToOSStatusEx(v12, 0);
    }
  }

  if (a4)
  {
    *a4 = v12;
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __51__CUPairingDaemon__copyHomeKitExWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_copyHomeKitWithOptionsKeychain:(unint64_t)a3 error:(int *)a4
{
  v53 = a3;
  v60 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x1Eu, "Get HomeKit Local key", v4, v5, v6, v7, v51);
  }

  v57 = 0;
  v55 = 0;
  v56 = 0;
  v8 = *MEMORY[0x1E697AFF8];
  v9 = KeychainCopyMatchingFormatted(&v57, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", a3, a4, v4, v5, v6, v7, *MEMORY[0x1E697AFF8]);
  if (v9)
  {
    goto LABEL_11;
  }

  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x1Eu, "No HomeKit Local key, try v2 key: %#m", v12, v13, v14, v15, v57);
  }

  v9 = KeychainCopyMatchingFormatted(&v57, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v10, v11, v12, v13, v14, v15, v8);
  if (v9)
  {
LABEL_11:
    v22 = v9;
  }

  else
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x1Eu, "No HomeKit v2 key, try v0 key: %#m", v18, v19, v20, v21, v57);
    }

    v22 = KeychainCopyMatchingFormatted(&v57, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v16, v17, v18, v19, v20, v21, v8);
    if (!v22)
    {
      v43 = 0;
      v30 = 0;
      v31 = 0;
      v35 = 0;
      v23 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
      goto LABEL_27;
    }
  }

  v23 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x5Au, "Bad HomeKit key type", v24, v25, v26, v27, v52);
    }

    v35 = 0;
    v31 = 0;
    v30 = 0;
    v43 = 0;
    v42 = 4294960540;
    goto LABEL_52;
  }

  v28 = *MEMORY[0x1E697AC30];
  TypeID = CFStringGetTypeID();
  v30 = CFDictionaryGetTypedValue(v22, v28, TypeID, &v57);
  if (!v30)
  {
    v43 = 0;
    v31 = 0;
    v35 = 0;
    goto LABEL_27;
  }

  v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v30];
  if (!v31)
  {
    v35 = 0;
    v43 = 0;
    v42 = 4294960588;
    goto LABEL_52;
  }

  v32 = *MEMORY[0x1E697B3C0];
  v33 = CFDataGetTypeID();
  v34 = CFDictionaryGetTypedValue(v22, v32, v33, &v57);
  v35 = v34;
  if (!v34)
  {
    v43 = 0;
    goto LABEL_27;
  }

  v36 = [v34 bytes];
  v37 = [v35 length];
  v56 = v37;
  v38 = memchr(v36, 43, v37);
  if (!v38)
  {
    v43 = 0;
    v42 = 4294960554;
    goto LABEL_52;
  }

  v39 = &v36[v37];
  v40 = v38 + 1;
  v41 = v39 - (v38 + 1);
  v55 = v41;
  v56 = v38 - v36;
  v42 = HexToData(v36, v38 - v36, 22, v59, 0x20uLL, &v56, 0, 0);
  v57 = v42;
  if (v42)
  {
    goto LABEL_41;
  }

  if (v56 != 32)
  {
LABEL_42:
    v43 = 0;
    v42 = 4294960553;
LABEL_52:
    v57 = v42;
    goto LABEL_28;
  }

  v42 = HexToData(v40, v41, 22, v58, 0x20uLL, &v55, 0, 0);
  v57 = v42;
  if (v42)
  {
LABEL_41:
    v43 = 0;
    goto LABEL_28;
  }

  if (v55 != 32)
  {
    goto LABEL_42;
  }

  v43 = objc_alloc_init(CUPairingIdentity);
  [(CUPairingIdentity *)v43 setIdentifier:v31];
  v44 = objc_alloc(MEMORY[0x1E695DEF0]);
  v45 = [v44 initWithBytes:v59 length:v56];
  [(CUPairingIdentity *)v43 setPublicKey:v45];

  if ((v53 & 2) != 0)
  {
    v46 = objc_alloc(MEMORY[0x1E695DEF0]);
    v47 = [v46 initWithBytes:v58 length:v55];
    [(CUPairingIdentity *)v43 setSecretKey:v47];
  }

  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x1Eu, "Got HomeKit key: %@", v24, v25, v26, v27, v43);
  }

LABEL_27:
  v42 = v57;
  if (!v57)
  {
    goto LABEL_35;
  }

LABEL_28:
  v48 = v23[762];
  if (v48 > 90)
  {
    goto LABEL_35;
  }

  if (v48 != -1)
  {
    goto LABEL_30;
  }

  if (_LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au))
  {
    v42 = v57;
LABEL_30:
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 0x5Au, "### Get HomeKit key failed: %#m", v24, v25, v26, v27, v42);
  }

LABEL_35:
  if (a4)
  {
    *a4 = v57;
  }

  v49 = v43;

  return v49;
}

- (id)_copyHomeKitLocalPairingIDWithOptions:(unint64_t)a3 error:(int *)a4
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5769;
  v28 = __Block_byref_object_dispose__5770;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5769;
  v22 = __Block_byref_object_dispose__5770;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CUPairingDaemon__copyHomeKitLocalPairingIDWithOptions_error___block_invoke;
  v14[3] = &unk_1E73A4C58;
  v16 = &v24;
  v17 = &v18;
  v9 = v7;
  v15 = v9;
  [(CUHomeKitManager *)homeKitManager getHomeKitLocalPairingIdentityWithOptions:a3 completion:v14];
  v10 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    LODWORD(v11) = -6722;
  }

  else
  {
    v11 = v19[5];
    if (v11)
    {
      LODWORD(v11) = NSErrorToOSStatusEx(v11, 0);
    }
  }

  if (a4)
  {
    *a4 = v11;
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __63__CUPairingDaemon__copyHomeKitLocalPairingIDWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_copyHomeKitWithOptionsHAP:(unint64_t)a3 error:(int *)a4
{
  v11 = [CUPairingDaemon _copyHomeKitLocalPairingIDWithOptions:"_copyHomeKitLocalPairingIDWithOptions:error:" error:?];
  if (v11)
  {
    return v11;
  }

  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsHAP:error:]", 0x1Eu, "No HomeKit Local Pairing ID, trying HAP directly", v7, v8, v9, v10, v26);
  }

  v12 = [getHAPSystemKeychainStoreClass_5802[0]() systemStore];
  if (v12)
  {
    v13 = v12;
    v27 = 0;
    v14 = [v12 getLocalPairingIdentity:&v27];
    v15 = v27;
    v16 = v15;
    if (v14)
    {
      v17 = [v14 identifier];
      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
        if (v18)
        {
          v19 = objc_alloc_init(CUPairingIdentity);
          [(CUPairingIdentity *)v19 setIdentifier:v18];
          v20 = [v14 publicKey];
          v21 = [v20 data];
          [(CUPairingIdentity *)v19 setPublicKey:v21];

          if ((a3 & 2) != 0)
          {
            v22 = [v14 privateKey];
            v23 = [v22 data];
            [(CUPairingIdentity *)v19 setSecretKey:v23];
          }

          v24 = 0;
          goto LABEL_13;
        }

        v19 = 0;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      v24 = -6708;
    }

    else
    {
      v24 = NSErrorToOSStatusEx(v15, 0);
      v19 = 0;
      v17 = 0;
      v18 = 0;
    }

LABEL_13:
    if (a4)
    {
      *a4 = v24;
    }

    v11 = v19;

    return v11;
  }

  return [(CUPairingDaemon *)self _copyHomeKitWithOptionsKeychain:a3 error:a4];
}

- (void)getIdentityWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if ((a3 & 8) != 0)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("CUPairingDaemonHomeKit", v12);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke;
    block[3] = &unk_1E73A4BB0;
    block[4] = self;
    v24 = a3;
    v23 = v9;
    dispatch_async(&v11->super, block);
  }

  else if ((a3 & 0x130) != 0)
  {
    homeKitManager = self->_homeKitManager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke_2;
    v20[3] = &unk_1E73A3898;
    v21 = v8;
    [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:a3 completion:v20];
    v11 = v21;
  }

  else
  {
    v11 = self;
    objc_sync_enter(v11);
    v19 = 0;
    v13 = [(CUPairingDaemon *)v11 _copyOrCreateWithOptions:a3 error:&v19];
    if (v9)
    {
      v14 = v19;
      if (v19)
      {
        v15 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v19, 0, 0)}];
        v4 = v16;
        v17 = @"?";
        if (v16)
        {
          v17 = v16;
        }

        v26[0] = v17;
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v18 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:v5];
      }

      else
      {
        v18 = 0;
      }

      (v9)[2](v9, v13, v18);
      if (v14)
      {
      }
    }

    objc_sync_exit(v11);
  }
}

void __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = [*(a1 + 32) _copyHomeKitWithOptions:*(a1 + 48) error:&v12];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v12;
    if (v12)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v12, 0, 0)}];
      v8 = v7;
      v9 = @"?";
      if (v7)
      {
        v9 = v7;
      }

      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v5 errorWithDomain:v6 code:v4 userInfo:v10];
      (*(v3 + 16))(v3, v2, v11);
    }

    else
    {
      (*(v3 + 16))(v3, v2, 0);
    }
  }
}

uint64_t __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)copyIdentityWithOptions:(unint64_t)a3 error:(int *)a4
{
  if ((a3 & 8) != 0)
  {

    return [CUPairingDaemon _copyHomeKitWithOptions:"_copyHomeKitWithOptions:error:" error:?];
  }

  else if ((a3 & 0x130) != 0)
  {

    return [CUPairingDaemon _copyHomeKitExWithOptions:"_copyHomeKitExWithOptions:error:" error:?];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(CUPairingDaemon *)v7 _copyOrCreateWithOptions:a3 error:a4];
    objc_sync_exit(v7);

    return v8;
  }
}

- (void)_rpIdentityUpdate
{
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]", 0x1Eu, "Self RPIdentity get start\n", v2, v3, v4, v5, v9[0]);
  }

  v7 = objc_alloc_init(getRPClientClass[0]());
  [v7 setDispatchQueue:self->_dispatchQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CUPairingDaemon__rpIdentityUpdate__block_invoke;
  v9[3] = &unk_1E73A3870;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [v8 getIdentitiesWithFlags:1 completion:v9];
}

void __36__CUPairingDaemon__rpIdentityUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 0x5Au, "### Self RPIdentity get failed: %{error}\n", v7, v8, v9, v10, v6);
    }

    goto LABEL_40;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      if ([v16 type] == 1)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v21 = v16;

    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = *(*(a1 + 40) + 24);
    v23 = [v21 deviceIRKData];
    v28 = v23;
    if (v23)
    {
      v29 = v23;
      v30 = v22;
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        if (!v30)
        {

          goto LABEL_32;
        }

        v32 = [v29 isEqual:v30];

        if (!v32)
        {
LABEL_32:
          if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 0x1Eu, "Self RPIdentity IRK changed: %{mask} -> %{mask}\n", v24, v25, v26, v27, v31);
          }

          objc_storeStrong((*(a1 + 40) + 24), v28);
          notify_post("com.apple.pairing.identityChanged");
LABEL_39:

          goto LABEL_40;
        }
      }
    }

    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 0x1Eu, "Self RPIdentity IRK unchanged: %{mask} -> %{mask}\n", v24, v25, v26, v27, v22);
    }

    goto LABEL_39;
  }

LABEL_13:

LABEL_20:
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 0x1Eu, "Self RPIdentity get failed: no self identity\n", v17, v18, v19, v20, v33);
  }

LABEL_40:
}

- (void)reset
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_testMode)
  {
    [(CUPairingDaemon *)self deleteIdentityWithOptions:0];
    [(CUPairingDaemon *)self deleteIdentityWithOptions:4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:0 error:0];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CUPairingDaemon *)self removePairedPeer:*(*(&v22 + 1) + 8 * i) options:0 removeAdminAllowed:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v12 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:4 error:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(CUPairingDaemon *)self removePairedPeer:*(*(&v18 + 1) + 8 * j) options:4 removeAdminAllowed:1, v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
  {

    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon reset]", 0x5Au, "### Reset only allowed in test mode\n", v2, v3, v4, v5, v30);
  }
}

- (void)_connectionInvalidated:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v5 connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v5];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = objc_alloc_init(CUPairingXPCConnection);
  objc_storeStrong(&v7->_daemon, self);
  objc_storeStrong(&v7->_dispatchQueue, self->_dispatchQueue);
  objc_storeStrong(&v7->_xpcCnx, a4);
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = self->_xpcConnections;
    self->_xpcConnections = v9;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v7];
  [v6 _setQueue:self->_dispatchQueue];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFA68];
  [v6 setExportedInterface:v11];

  [v6 setExportedObject:v7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__CUPairingDaemon_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_1E73A49F0;
  v20[4] = self;
  v12 = v7;
  v21 = v12;
  [v6 setInvalidationHandler:v20];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFC28];
  [v6 setRemoteObjectInterface:v13];

  [v6 resume];
  if (gLogCategory_CUPairingDaemon <= 20 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x14u)))
  {
    v14 = [v6 processIdentifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon listener:shouldAcceptNewConnection:]", 0x14u, "XPC connection started from %#{pid}\n", v15, v16, v17, v18, v14);
  }

  return 1;
}

- (void)_invalidate
{
  v23 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v18);
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(*(&v18 + 1) + 8 * i) + 40) invalidate];
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  rpIdentityNotifier = self->_rpIdentityNotifier;
  if (rpIdentityNotifier != -1)
  {
    notify_cancel(rpIdentityNotifier);
    self->_rpIdentityNotifier = -1;
  }

  rpSelfIRK = self->_rpSelfIRK;
  self->_rpSelfIRK = 0;

  [(CUHomeKitManager *)self->_homeKitManager invalidate];
  homeKitManager = self->_homeKitManager;
  self->_homeKitManager = 0;

  v17 = gPairingDaemon;
  if (gPairingDaemon == self)
  {
    gPairingDaemon = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUPairingDaemon_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _activate]", 0x1Eu, "Activate\n", v2, v3, v4, v5, v13);
  }

  if (!self->_homeKitManager)
  {
    v7 = objc_alloc_init(CUHomeKitManager);
    homeKitManager = self->_homeKitManager;
    self->_homeKitManager = v7;

    v9 = dispatch_queue_create("CUPairingDaemonHomeKit", 0);
    [(CUHomeKitManager *)self->_homeKitManager setDispatchQueue:v9];

    [(CUHomeKitManager *)self->_homeKitManager setFlags:516];
    if (GestaltGetDeviceClass_sOnce != -1)
    {
      dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
    }

    if (GestaltGetDeviceClass_deviceClass == 7 || GestaltGetDeviceClass_deviceClass == 4)
    {
      [(CUHomeKitManager *)self->_homeKitManager setFlags:[(CUHomeKitManager *)self->_homeKitManager flags]| 2];
    }

    [(CUHomeKitManager *)self->_homeKitManager activate];
  }

  if (self->_rpIdentityNotifier == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __28__CUPairingDaemon__activate__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_rpIdentityNotifier, dispatchQueue, handler);
    [(CUPairingDaemon *)self _rpIdentityUpdate];
  }

  if (!self->_stateHandle)
  {
    self->_stateHandle = os_state_add_handler();
  }

  if (!self->_xpcListener)
  {
    v11 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.PairingManager"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v11;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }
}

uint64_t __28__CUPairingDaemon__activate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(result + 32) + 16) != -1)
  {
    v10 = result;
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _activate]_block_invoke", 0x1Eu, "RPIdentities changed\n", a5, a6, a7, a8, v8);
    }

    v11 = *(v10 + 32);

    return [v11 _rpIdentityUpdate];
  }

  return result;
}

- (void)activate
{
  if (self->_testMode && !self->_xpcListener)
  {
    v3 = [MEMORY[0x1E696B0D8] anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CUPairingDaemon_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)detailedDescription
{
  v213 = *MEMORY[0x1E69E9840];
  v209 = 0;
  NSAppendPrintF(&v209, "=== CUPairingManager ===\n", v2, v3, v4, v5, v6, v7, v166);
  v9 = v209;
  v10 = [(CUPairingDaemon *)self copyIdentityWithOptions:514 error:0];
  v17 = v10;
  if (v10)
  {
    v208 = v9;
    v18 = &v208;
    NSAppendPrintF(&v208, "Per-account:      %@\n", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v207 = v9;
    v18 = &v207;
    NSAppendPrintF(&v207, "Per-account:      No identity\n", v11, v12, v13, v14, v15, v16, v167);
  }

  v19 = *v18;

  v20 = [(CUPairingDaemon *)self copyIdentityWithOptions:518 error:0];
  if (v20)
  {
    v206 = v19;
    v27 = &v206;
    NSAppendPrintF(&v206, "Per-device:       %@\n", v21, v22, v23, v24, v25, v26, v20);
  }

  else
  {
    v205 = v19;
    v27 = &v205;
    NSAppendPrintF(&v205, "Per-device:       No identity\n", v21, v22, v23, v24, v25, v26, v168);
  }

  v28 = *v27;

  v29 = [(CUPairingDaemon *)self copyIdentityWithOptions:522 error:0];
  if (v29)
  {
    v204 = v28;
    v36 = &v204;
    NSAppendPrintF(&v204, "HomeKitHAP:       %@\n", v30, v31, v32, v33, v34, v35, v29);
  }

  else
  {
    v203 = v28;
    v36 = &v203;
    NSAppendPrintF(&v203, "HomeKitHAP:       No identity\n", v30, v31, v32, v33, v34, v35, v169);
  }

  v37 = *v36;

  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  if (GestaltGetDeviceClass_deviceClass == 7 || GestaltGetDeviceClass_deviceClass == 4)
  {
    v38 = [(CUPairingDaemon *)self copyIdentityWithOptions:530 error:0];

    if (v38)
    {
      v202 = v37;
      v45 = &v202;
      NSAppendPrintF(&v202, "HomeKitAccessory: %@\n", v39, v40, v41, v42, v43, v44, v38);
      v29 = v38;
    }

    else
    {
      v201 = v37;
      v45 = &v201;
      NSAppendPrintF(&v201, "HomeKitAccessory: No identity\n", v39, v40, v41, v42, v43, v44, v170);
      v29 = 0;
    }

    v46 = *v45;

    v37 = v46;
  }

  v47 = [(CUPairingDaemon *)self copyIdentityWithOptions:546 error:0];

  if (v47)
  {
    v200 = v37;
    v54 = &v200;
    NSAppendPrintF(&v200, "HomeKitUser:      %@\n", v48, v49, v50, v51, v52, v53, v47);
  }

  else
  {
    v199 = v37;
    v54 = &v199;
    NSAppendPrintF(&v199, "HomeKitUser:      No identity\n", v48, v49, v50, v51, v52, v53, v170);
  }

  v55 = *v54;

  v56 = [(CUPairingDaemon *)self copyIdentityWithOptions:770 error:0];
  v175 = v56;
  if (v56)
  {
    v198 = v55;
    v172 = v56;
    v63 = &v198;
    NSAppendPrintF(&v198, "HomeKitLegacy:    %@\n", v57, v58, v59, v60, v61, v62, v172);
  }

  else
  {
    v197 = v55;
    v63 = &v197;
    NSAppendPrintF(&v197, "HomeKitLegacy:    No identity\n", v57, v58, v59, v60, v61, v62, v171);
  }

  v64 = *v63;

  v176 = self;
  v65 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:514 error:0];
  v196 = v64;
  v66 = [v65 count];
  NSAppendPrintF(&v196, "\n--- Per-account Peers (%ld) ---\n", v67, v68, v69, v70, v71, v72, v66);
  v73 = v196;

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v74 = v65;
  v75 = [v74 countByEnumeratingWithState:&v192 objects:v212 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v193;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        v79 = v73;
        if (*v193 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v80 = *(*(&v192 + 1) + 8 * i);
        v191 = v73;
        v81 = v80;
        if (objc_opt_respondsToSelector())
        {
          v82 = [v81 detailedDescription];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v81 descriptionWithLevel:20];
          }

          else
          {
            NSPrintF("%@\n", v83, v84, v85, v86, v87, v88, v89, v81);
          }
          v82 = ;
        }

        v90 = v82;

        NSAppendPrintF(&v191, "%@", v91, v92, v93, v94, v95, v96, v90);
        v73 = v191;
      }

      v76 = [v74 countByEnumeratingWithState:&v192 objects:v212 count:16];
    }

    while (v76);
  }

  if (![v74 count])
  {
    v190 = v73;
    NSAppendPrintF(&v190, "No per-account peers\n", v97, v98, v99, v100, v101, v102, v173);
    v103 = v190;

    v73 = v103;
  }

  v104 = [(CUPairingDaemon *)v176 copyPairedPeersWithOptions:518 error:0];

  v189 = v73;
  v105 = [v104 count];
  NSAppendPrintF(&v189, "\n--- Per-device Peers (%ld) ---\n", v106, v107, v108, v109, v110, v111, v105);
  v112 = v189;

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v113 = v104;
  v114 = [v113 countByEnumeratingWithState:&v185 objects:v211 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v186;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        v118 = v112;
        if (*v186 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v119 = *(*(&v185 + 1) + 8 * j);
        v184 = v112;
        v120 = v119;
        if (objc_opt_respondsToSelector())
        {
          v121 = [v120 detailedDescription];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v120 descriptionWithLevel:20];
          }

          else
          {
            NSPrintF("%@\n", v122, v123, v124, v125, v126, v127, v128, v120);
          }
          v121 = ;
        }

        v129 = v121;

        NSAppendPrintF(&v184, "%@", v130, v131, v132, v133, v134, v135, v129);
        v112 = v184;
      }

      v115 = [v113 countByEnumeratingWithState:&v185 objects:v211 count:16];
    }

    while (v115);
  }

  if (![v113 count])
  {
    v183 = v112;
    NSAppendPrintF(&v183, "No per-device peers\n", v136, v137, v138, v139, v140, v141, v174);
    v142 = v183;

    v112 = v142;
  }

  v182 = v112;
  v143 = [(NSMutableSet *)v176->_xpcConnections count];
  NSAppendPrintF(&v182, "\n--- XPC connections (%ld) ---\n", v144, v145, v146, v147, v148, v149, v143);
  v150 = v182;

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v151 = v176->_xpcConnections;
  v152 = [(NSMutableSet *)v151 countByEnumeratingWithState:&v178 objects:v210 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v179;
    do
    {
      v155 = 0;
      v156 = v150;
      do
      {
        if (*v179 != v154)
        {
          objc_enumerationMutation(v151);
        }

        v157 = *(*(&v178 + 1) + 8 * v155);
        v177 = v156;
        v158 = [*(v157 + 40) processIdentifier];
        NSAppendPrintF(&v177, "%#{pid}\n", v159, v160, v161, v162, v163, v164, v158);
        v150 = v177;

        ++v155;
        v156 = v150;
      }

      while (v153 != v155);
      v153 = [(NSMutableSet *)v151 countByEnumeratingWithState:&v178 objects:v210 count:16];
    }

    while (v153);
  }

  return v150;
}

- (void)dealloc
{
  if (self->_xpcListener)
  {
    FatalErrorF("XPC listener still active during dealloc", a2, v2, v3, v4, v5, v6, v7, v8.receiver);
  }

  v8.receiver = self;
  v8.super_class = CUPairingDaemon;
  [(CUPairingDaemon *)&v8 dealloc];
}

- (id)initStandalone
{
  v5.receiver = self;
  v5.super_class = CUPairingDaemon;
  v2 = [(CUPairingDaemon *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_rpIdentityNotifier = -1;
    v3 = v2;
  }

  return v2;
}

- (CUPairingDaemon)init
{
  v5.receiver = self;
  v5.super_class = CUPairingDaemon;
  v2 = [(CUPairingDaemon *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_rpIdentityNotifier = -1;
    objc_storeStrong(&gPairingDaemon, v2);
    v3 = v2;
  }

  return v2;
}

@end