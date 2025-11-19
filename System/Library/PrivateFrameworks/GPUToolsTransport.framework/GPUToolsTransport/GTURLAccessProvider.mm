@interface GTURLAccessProvider
- (BOOL)_sharesFileSystemWith:(id)a3 remoteConnection:(id)a4;
- (GTURLAccessProvider)initWithServiceProvider:(id)a3 connectionProvider:(id)a4 serviceVendor:(id)a5;
- (id)makeURL:(id)a3;
- (id)urlForPath:(id)a3;
- (void)copyIdentifier:(id)a3 toDevice:(id)a4 allowLocalURL:(BOOL)a5 directory:(id)a6 completionHandler:(id)a7;
- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4;
- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
@end

@implementation GTURLAccessProvider

- (GTURLAccessProvider)initWithServiceProvider:(id)a3 connectionProvider:(id)a4 serviceVendor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v10 && v11)
  {
    v21.receiver = self;
    v21.super_class = GTURLAccessProvider;
    v14 = [(GTURLAccessProvider *)&v21 init];
    if (v14)
    {
      v15 = objc_opt_new();
      registeredURLs = v14->_registeredURLs;
      v14->_registeredURLs = v15;

      v17 = +[GTDeviceProperties uniqueDeviceID];
      deviceUDID = v14->_deviceUDID;
      v14->_deviceUDID = v17;

      objc_storeStrong(&v14->_serviceProvider, a3);
      objc_storeStrong(&v14->_connectionProvider, a4);
      objc_storeStrong(&v14->_serviceVendor, a5);
      v19 = NSTemporaryDirectory();
      DeleteAllArchives(v19);
    }

    self = v14;
    v13 = self;
  }

  return v13;
}

- (id)urlForPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_registeredURLs;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v9), v15];
      v11 = [v10 path];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_sharesFileSystemWith:(id)a3 remoteConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([(NSString *)self->_deviceUDID isEqualToString:v6])
    {
      v9 = 1;
    }

    else
    {
      v10 = [(GTServiceProvider *)self->_serviceProvider allServices];
      v11 = filteredArrayByService(v10, &unk_2860ED5D8);
      v12 = [v11 firstObject];

      serviceVendor = self->_serviceVendor;
      v14 = [v12 serviceProperties];
      v15 = [(GTServiceVendor *)serviceVendor getSimulatorDeviceBrowserService:v14];

      v9 = [v15 isSimulatorDevice:v6];
    }
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = [v8 scheme];
  v10 = [v9 isEqualToString:@"gtsandboxid"];

  if (v10 && ([v8 host], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v8 path];

    if (v12)
    {
      if (GTCoreLogUseOsLog())
      {
        v13 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
        }
      }

      else
      {
        v17 = *MEMORY[0x277D85E08];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"securityScopedURLFromSandboxID %@", v8];
        fprintf(v17, "%s\n", [v18 UTF8String]);
      }

      v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:v8];
      if (v19)
      {
        v20 = v19;
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v20 path];
        v23 = [v21 fileExistsAtPath:v22];

        v24 = GTCoreLogUseOsLog();
        if (v23)
        {
          if (v24)
          {
            v25 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
            }
          }

          else
          {
            v27 = *MEMORY[0x277D85E08];
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"File found locally %@", v20];
            fprintf(v27, "%s\n", [v25 UTF8String]);
          }

          v7[2](v7, v20);
LABEL_51:

          goto LABEL_17;
        }

        if (v24)
        {
          v26 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
          }
        }

        else
        {
          v28 = *MEMORY[0x277D85DF8];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"File should exist locally at %@ but can't be found on disk", v20];
          fprintf(v28, "%s\n", [v26 UTF8String]);
        }

        [(NSMutableDictionary *)self->_registeredURLs removeObjectForKey:v8];
      }

      v20 = [v8 host];
      v29 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v20];
      v30 = v29;
      if (v29)
      {
        v31 = allServicesForDeviceUDID(v29, v20);
        v32 = filteredArrayByService(v31, &unk_2860EEDF0);
        v33 = [v32 firstObject];

        if (v33)
        {
          v34 = [GTURLAccessProviderXPCProxy alloc];
          v35 = [v33 serviceProperties];
          v36 = [(GTURLAccessProviderXPCProxy *)v34 initWithConnection:v30 remoteProperties:v35];

          if ([(GTURLAccessProvider *)self _sharesFileSystemWith:v20 remoteConnection:v30])
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke;
            v50[3] = &unk_279661870;
            v50[4] = self;
            v51 = v8;
            v52 = v7;
            [(GTURLAccessProviderXPCProxy *)v36 securityScopedURLFromSandboxID:v51 completionHandler:v50];

            v37 = v51;
          }

          else
          {
            v40 = objc_opt_respondsToSelector();
            deviceUDID = self->_deviceUDID;
            if (v40)
            {
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2;
              v47[3] = &unk_279661898;
              v49 = v7;
              v47[4] = self;
              v48 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 copyIdentifier:v48 toDevice:deviceUDID completionHandler:v47];

              v37 = v49;
            }

            else
            {
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70;
              v44[3] = &unk_2796618C0;
              v46 = v7;
              v44[4] = self;
              v45 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 transferIdentifier:v45 toDevice:deviceUDID completionHandler:v44];

              v37 = v46;
            }
          }
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            v39 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
            }
          }

          else
          {
            v43 = *MEMORY[0x277D85DF8];
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find URL access provider"];
            fprintf(v43, "%s\n", [v39 UTF8String]);
          }

          v7[2](v7, 0);
        }
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v38 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
          }
        }

        else
        {
          v42 = *MEMORY[0x277D85DF8];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing remote connection for %@", v20];
          fprintf(v42, "%s\n", [v38 UTF8String]);
        }

        v7[2](v7, 0);
      }

      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
  }

  if (GTCoreLogUseOsLog())
  {
    v14 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sandbox ID %@", v8];
    fprintf(v15, "%s\n", [v16 UTF8String]);
  }

  v7[2](v7, 0);
LABEL_17:
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 8) setObject:v3 forKeyedSubscript:a1[5]];
  }

  (*(a1[6] + 16))();
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 scheme];
    v8 = [v7 isEqualToString:@"gtsandboxid"];

    if (v8)
    {
      [*(a1[4] + 8) objectForKeyedSubscript:v5];
    }

    else
    {
      LocalArchiveURLFromRemoteURL(v5);
    }
    v10 = ;
    [*(a1[4] + 8) setObject:v10 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2_cold_1(v6, v9);
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v6 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed to transfer archive, %@", v13];
      fprintf(v11, "%s\n", [v14 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70(void *a1, void *a2)
{
  if (a2)
  {
    v6 = LocalArchiveURLFromRemoteURL(a2);
    [*(a1[4] + 8) setObject:v6 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v3 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70_cold_1();
      }
    }

    else
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to transfer archive"];
      fprintf(v4, "%s\n", [v5 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

- (id)makeURL:(id)a3
{
  ++makeURL__urlNumber;
  v4 = a3;
  v5 = [v4 path];
  v6 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/%@?id=%u", @"gtsandboxid", self->_deviceUDID, v7, makeURL__urlNumber];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
  [(NSMutableDictionary *)self->_registeredURLs setObject:v4 forKeyedSubscript:v9];

  return v9;
}

- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__GTURLAccessProvider_transferIdentifier_toDevice_completionHandler___block_invoke;
  v10[3] = &unk_2796618E8;
  v11 = v8;
  v9 = v8;
  [(GTURLAccessProvider *)self copyIdentifier:a3 toDevice:a4 allowLocalURL:0 directory:0 completionHandler:v10];
}

- (void)copyIdentifier:(id)a3 toDevice:(id)a4 allowLocalURL:(BOOL)a5 directory:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v188 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (GTCoreLogUseOsLog())
  {
    v16 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"copyIdentifier %@ to device %@", v12, v13];
    fprintf(v17, "%s\n", [v18 UTF8String]);
  }

  v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:v12];
  v134 = v9;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"currentURL %@", v19];
    fprintf(v21, "%s\n", [v20 UTF8String]);
  }

  v22 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v13];
  v23 = v22;
  if (!v22)
  {
    if (GTCoreLogUseOsLog())
    {
      v28 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v30 = *MEMORY[0x277D85DF8];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"No remote connection for device %@", v13];
      fprintf(v30, "%s\n", [v28 UTF8String]);
    }

    v31 = MEMORY[0x277CCA9B8];
    v177 = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing connection for device: %@", v13];
    v178 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
    v24 = [v31 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:0 userInfo:v33];

    v15[2](v15, 0, v24);
    goto LABEL_93;
  }

  v129 = self;
  v24 = FindRemoteGTFileWriterService(v22, v13, self->_connectionProvider);
  if (!v24)
  {
    if (GTCoreLogUseOsLog())
    {
      v29 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v34 = *MEMORY[0x277D85DF8];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find remote file writer service for device %@", v13];
      fprintf(v34, "%s\n", [v29 UTF8String]);
    }

    v35 = MEMORY[0x277CCA9B8];
    v175 = *MEMORY[0x277CCA450];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing file writer service for device: %@", v13];
    v176 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
    v38 = [v35 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:1 userInfo:v37];

    v15[2](v15, 0, v38);
    goto LABEL_92;
  }

  v25 = [GTFileWriterServiceXPCProxy alloc];
  v26 = [v24 serviceProperties];
  v133 = [(GTFileWriterServiceXPCProxy *)v25 initWithConnection:v23 remoteProperties:v26];

  if (([v19 startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v27 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v39 = *MEMORY[0x277D85E08];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to consume sandbox extension for URL %@", v19];
      fprintf(v39, "%s\n", [v27 UTF8String]);
    }
  }

  v128 = v12;
  v40 = v14;
  v149 = 0;
  v41 = v19;
  v172 = 0;
  v135 = *MEMORY[0x277CBE7A0];
  v42 = [v41 getResourceValue:&v172 forKey:? error:?];
  v43 = v172;
  v44 = 0;
  v130 = v24;
  if (!v42)
  {
    goto LABEL_75;
  }

  v121 = v23;
  v117 = v43;
  v136 = [v43 pathComponents];
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v162 = 0;
  v163 = &v162;
  v164 = 0x3032000000;
  v165 = __Block_byref_object_copy__4;
  v166 = __Block_byref_object_dispose__4;
  v167 = 0;
  v45 = [MEMORY[0x277CCAA00] defaultManager];
  v46 = *MEMORY[0x277CBE838];
  v140 = *MEMORY[0x277CBE868];
  v180[0] = *MEMORY[0x277CBE868];
  v123 = v46;
  v180[1] = v46;
  v132 = *MEMORY[0x277CBE8B0];
  v180[2] = *MEMORY[0x277CBE8B0];
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = __NewFileEntriesForURL_block_invoke;
  v161[3] = &unk_279661960;
  v161[4] = &v168;
  v161[5] = &v162;
  v118 = v41;
  v48 = [v45 enumeratorAtURL:v41 includingPropertiesForKeys:v47 options:0 errorHandler:v161];

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = v48;
  v50 = [obj countByEnumeratingWithState:&v157 objects:v179 count:16];
  if (!v50)
  {
    goto LABEL_71;
  }

  v51 = v50;
  v138 = *v158;
  v115 = *MEMORY[0x277CCA450];
  v116 = *MEMORY[0x277CCA5B8];
  v127 = v49;
  v113 = v15;
  v114 = v13;
  v124 = v40;
  v119 = v19;
  while (2)
  {
    v52 = 0;
    v131 = v51;
    do
    {
      if (*v158 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v157 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      v155 = 0;
      v156 = 0;
      v55 = v163;
      v56 = [v53 getResourceValue:&v156 forKey:v140 error:&v155];
      v57 = v156;
      objc_storeStrong(v55 + 5, v155);
      if ((v56 & 1) == 0)
      {
        *(v169 + 24) = 1;
        goto LABEL_70;
      }

      if ([v57 BOOLValue])
      {
        goto LABEL_60;
      }

      v153 = 0;
      v154 = 0;
      v58 = v163;
      v59 = [v53 getResourceValue:&v154 forKey:v132 error:&v153];
      v60 = v154;
      objc_storeStrong(v58 + 5, v153);
      if ((v59 & 1) == 0)
      {
        *(v169 + 24) = 1;
        goto LABEL_69;
      }

      v61 = v163 + 5;
      v152 = v163[5];
      v62 = v136;
      *v187 = 0;
      v63 = 0;
      if ([v53 getResourceValue:v187 forKey:v135 error:&v152])
      {
        [*v187 pathComponents];
        v65 = v64 = v60;
        v66 = [v65 subarrayWithRange:{objc_msgSend(v62, "count"), objc_msgSend(v65, "count") - objc_msgSend(v62, "count")}];

        v60 = v64;
        v63 = [MEMORY[0x277CCACA8] pathWithComponents:v66];

        v49 = v127;
      }

      objc_storeStrong(v61, v152);
      if (!v63)
      {
        *(v169 + 24) = 1;
        goto LABEL_68;
      }

      if ([v60 BOOLValue])
      {
        v126 = v60;
        v68 = v163 + 5;
        v67 = v163[5];
        v69 = v53;
        v70 = readlink([v69 fileSystemRepresentation], v187, 0x400uLL);
        if ((v70 & 0x8000000000000000) != 0)
        {
          v78 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v79 = gt_tagged_log(0x10u);
            v80 = 0x277CCA000;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v69;
              v182 = 1024;
              LODWORD(v183) = v78;
              _os_log_error_impl(&dword_24DBC9000, v79, OS_LOG_TYPE_ERROR, "Failed to read symlink for %@ (%d)", buf, 0x12u);
            }
          }

          else
          {
            v81 = *MEMORY[0x277D85DF8];
            v80 = 0x277CCA000uLL;
            v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read symlink for %@ (%d)", v69, v78];
            fprintf(v81, "%s\n", [v79 UTF8String]);
          }

          v82 = v78;

          v83 = MEMORY[0x277CCA9B8];
          v186 = v115;
          v84 = [*(v80 + 3240) stringWithFormat:@"Failed to read symlink for %@", v69];
          *buf = v84;
          v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v186 count:1];
          v67 = [v83 errorWithDomain:v116 code:v82 userInfo:v85];
          v86 = v67;

          v76 = 0;
          v49 = v127;
        }

        else
        {
          v71 = v70;
          if (v70 < 0x400)
          {
            v187[v70] = 0;
            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:v187];
          }

          else
          {
            v112 = v68;
            if (GTCoreLogUseOsLog())
            {
              v72 = gt_tagged_log(0x10u);
              v73 = 0x277CCA000;
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v69;
                v182 = 2048;
                v183 = v71;
                v184 = 2048;
                v185 = 1024;
                _os_log_error_impl(&dword_24DBC9000, v72, OS_LOG_TYPE_ERROR, "Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", buf, 0x20u);
              }
            }

            else
            {
              v87 = *MEMORY[0x277D85DF8];
              v73 = 0x277CCA000uLL;
              v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v69, v71, 1024];
              fprintf(v87, "%s\n", [v72 UTF8String]);
            }

            v88 = MEMORY[0x277CCA9B8];
            v186 = v115;
            v89 = [*(v73 + 3240) stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v69, v71, 1024];
            *buf = v89;
            v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v186 count:1];
            v67 = [v88 errorWithDomain:v116 code:55 userInfo:v90];
            v91 = v67;

            v76 = 0;
            v49 = v127;
            v68 = v112;
          }
        }

        objc_storeStrong(v68, v67);
        if (!v76)
        {
          *(v169 + 24) = 1;
          v60 = v126;
          goto LABEL_68;
        }

        v77 = [[GTFileEntry alloc] initWithLink:v63 destination:v76];
        v60 = v126;
        goto LABEL_59;
      }

      v150 = 0;
      v151 = 0;
      v74 = v163;
      v75 = [v53 getResourceValue:&v151 forKey:v123 error:&v150];
      v76 = v151;
      objc_storeStrong(v74 + 5, v150);
      if (!v75)
      {
        *(v169 + 24) = 1;

LABEL_68:
LABEL_69:

LABEL_70:
        v19 = v119;

        objc_autoreleasePoolPop(v54);
        v15 = v113;
        v13 = v114;
        v40 = v124;
        v24 = v130;
        goto LABEL_71;
      }

      v77 = -[GTFileEntry initWithPath:fileSize:]([GTFileEntry alloc], "initWithPath:fileSize:", v63, [v76 unsignedIntegerValue]);
LABEL_59:
      [v49 addObject:v77];

      v51 = v131;
LABEL_60:

      objc_autoreleasePoolPop(v54);
      ++v52;
    }

    while (v51 != v52);
    v51 = [obj countByEnumeratingWithState:&v157 objects:v179 count:16];
    v15 = v113;
    v13 = v114;
    v40 = v124;
    v19 = v119;
    v24 = v130;
    if (v51)
    {
      continue;
    }

    break;
  }

LABEL_71:

  if (*(v169 + 24) == 1)
  {
    v44 = 0;
    v149 = v163[5];
  }

  else
  {
    v44 = [v49 copy];
  }

  v23 = v121;

  _Block_object_dispose(&v162, 8);
  _Block_object_dispose(&v168, 8);

  v43 = v117;
  v41 = v118;
LABEL_75:

  v92 = v149;
  [v41 stopAccessingSecurityScopedResource];
  if (v44)
  {
    v141 = v92;
    v93 = v41;
    v139 = objc_opt_new();
    v14 = v40;
    if (v40)
    {
      v125 = v40;
      v12 = v128;
      if (objc_opt_respondsToSelector())
      {
        v94 = objc_opt_new();
        v95 = [v93 path];
        v122 = v23;
        v96 = v19;
        deviceUDID = v129->_deviceUDID;
        v147[0] = MEMORY[0x277D85DD0];
        v147[1] = 3221225472;
        v147[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke;
        v147[3] = &unk_2796618E8;
        v148 = v15;
        v98 = deviceUDID;
        v19 = v96;
        v23 = v122;
        v14 = v125;
        [(GTFileWriterServiceXPCProxy *)v133 startTransfer:v44 basePath:v95 fromDevice:v98 toDirectory:v125 options:v94 completionHandler:v147];

        v99 = v139;
        v92 = v141;
      }

      else
      {
        v120 = v19;
        if (GTCoreLogUseOsLog())
        {
          v103 = gt_tagged_log(0x10u);
          v14 = v125;
          v104 = v141;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
          }
        }

        else
        {
          v107 = *MEMORY[0x277D85DF8];
          v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"The gputrace file transfer service is too old to support remote macOS debugging. Try updating your device's DDI by installing a newer Xcode."];
          fprintf(v107, "%s\n", [v103 UTF8String]);
          v14 = v125;
          v104 = v141;
        }

        v108 = MEMORY[0x277CCA9B8];
        v173 = *MEMORY[0x277CCA450];
        v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"File writer service is too old. Missing selector %@", @"startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:"];
        v174 = v109;
        v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
        v92 = [v108 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:2 userInfo:v110];

        v15[2](v15, 0, v92);
        v19 = v120;
        v99 = v139;
      }
    }

    else
    {
      v12 = v128;
      if (v134 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v100 = [v93 path];
        v101 = v129->_deviceUDID;
        v145[0] = MEMORY[0x277D85DD0];
        v145[1] = 3221225472;
        v145[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke_115;
        v145[3] = &unk_2796618E8;
        v146 = v15;
        v99 = v139;
        [(GTFileWriterServiceXPCProxy *)v133 startTransfer:v44 basePath:v100 fromDevice:v101 options:v139 completionHandler:v145];

        v102 = v146;
      }

      else
      {
        v105 = [v93 path];
        v106 = v129->_deviceUDID;
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 3221225472;
        v142[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke_2;
        v142[3] = &unk_279661910;
        v144 = v15;
        v143 = v93;
        v99 = v139;
        [(GTFileWriterServiceXPCProxy *)v133 initiateTransfer:v44 basePath:v105 fromDevice:v106 options:v139 completionHandler:v142];

        v102 = v144;
      }

      v92 = v141;
    }

    v24 = v130;
  }

  else
  {
    v15[2](v15, 0, v92);
    v14 = v40;
    v12 = v128;
  }

  v38 = v133;
LABEL_92:

LABEL_93:
  v111 = *MEMORY[0x277D85DE8];
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_24DBC9000, v0, v1, "securityScopedURLFromSandboxID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_24DBC9000, v0, v1, "File found locally %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_ERROR, "Failed to transfer archive, %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_24DBC9000, v1, OS_LOG_TYPE_DEBUG, "copyIdentifier %@ to device %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_24DBC9000, v0, v1, "currentURL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_24DBC9000, v0, v1, "Failed to consume sandbox extension for URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end