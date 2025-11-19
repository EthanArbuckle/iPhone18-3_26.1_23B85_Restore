@interface MRDGroupSessionApprovalManager
+ (id)hashForIdentity:(id)a3;
+ (void)donateApprovedIdentity:(id)a3;
+ (void)donateRemovedIdentity:(id)a3;
+ (void)shouldAutoApproveIdentity:(id)a3 completion:(id)a4;
+ (void)shouldAutoApproveRequest:(id)a3 withSession:(id)a4 completion:(id)a5;
@end

@implementation MRDGroupSessionApprovalManager

+ (id)hashForIdentity:(id)a3
{
  v3 = a3;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  memset(&v59, 0, sizeof(v59));
  CC_SHA1_Init(&v59);
  v4 = [v3 identifier];
  v5 = +[MRDSettings currentSettings];
  v6 = [v5 recentGroupSessionParticipantsPepper];
  v7 = [v4 stringByAppendingString:v6];
  CC_SHA1_Update(&v59, [v7 UTF8String], objc_msgSend(v7, "length"));

  memset(&v67[8], 0, 64);
  *v67 = 4001;
  CC_SHA1_Final(&v67[8], &v59);
  v68[0] = *v67;
  v68[1] = *&v67[16];
  v68[2] = *&v67[32];
  v68[3] = *&v67[48];
  v69 = *&v67[64];
  if (*v67 > 3999)
  {
    if (*v67 > 4255)
    {
      if (*v67 == 4256)
      {
        v48 = v68 + 8;
        v49 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v50 = v49;
        for (i = 0; i != 64; i += 2)
        {
          v52 = *v48++;
          v53 = &v49[i];
          *v53 = a0123456789abcd[v52 >> 4];
          v53[1] = a0123456789abcd[v52 & 0xF];
        }

        v20 = [NSString alloc];
        v21 = v50;
        v22 = 64;
      }

      else
      {
        if (*v67 != 4512)
        {
          goto LABEL_50;
        }

        v27 = v68 + 8;
        v28 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v29 = v28;
        for (j = 0; j != 128; j += 2)
        {
          v31 = *v27++;
          v32 = &v28[j];
          *v32 = a0123456789abcd[v31 >> 4];
          v32[1] = a0123456789abcd[v31 & 0xF];
        }

        v20 = [NSString alloc];
        v21 = v29;
        v22 = 128;
      }
    }

    else if (*v67 == 4000)
    {
      v38 = v68 + 8;
      v39 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v40 = v39;
      for (k = 0; k != 32; k += 2)
      {
        v42 = *v38++;
        v43 = &v39[k];
        *v43 = a0123456789abcd[v42 >> 4];
        v43[1] = a0123456789abcd[v42 & 0xF];
      }

      v20 = [NSString alloc];
      v21 = v40;
      v22 = 32;
    }

    else
    {
      if (*v67 != 4001)
      {
        goto LABEL_50;
      }

      v14 = v68 + 8;
      v15 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v16 = v15;
      for (m = 0; m != 40; m += 2)
      {
        v18 = *v14++;
        v19 = &v15[m];
        *v19 = a0123456789abcd[v18 >> 4];
        v19[1] = a0123456789abcd[v18 & 0xF];
      }

      v20 = [NSString alloc];
      v21 = v16;
      v22 = 40;
    }

LABEL_45:
    v54 = [v20 initWithBytesNoCopy:v21 length:v22 encoding:4 freeWhenDone:1];
LABEL_46:
    v55 = v54;
    goto LABEL_47;
  }

  if (*v67 > 2999)
  {
    if (*v67 == 3000)
    {
      LODWORD(v70[0]) = bswap32(DWORD2(v68[0]));
      v44 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v45 = 0;
      v46 = v44 + 1;
      do
      {
        v47 = *(v70 + v45);
        *(v46 - 1) = a0123456789abcd[v47 >> 4];
        *v46 = a0123456789abcd[v47 & 0xF];
        v46 += 2;
        ++v45;
      }

      while (v45 != 4);
      v20 = [NSString alloc];
      v21 = v44;
      v22 = 8;
    }

    else
    {
      if (*v67 != 3001)
      {
        goto LABEL_50;
      }

      v70[0] = bswap64(*(&v68[0] + 1));
      v23 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v24 = 0;
      v25 = v23 + 1;
      do
      {
        v26 = *(v70 + v24);
        *(v25 - 1) = a0123456789abcd[v26 >> 4];
        *v25 = a0123456789abcd[v26 & 0xF];
        v25 += 2;
        ++v24;
      }

      while (v24 != 8);
      v20 = [NSString alloc];
      v21 = v23;
      v22 = 16;
    }

    goto LABEL_45;
  }

  if (*v67 == 1000)
  {
    v33 = *(&v68[0] + 1);
    if (*(&v68[0] + 1))
    {
      v34 = &v71;
      quot = *(&v68[0] + 1);
      do
      {
        v36 = lldiv(quot, 10);
        quot = v36.quot;
        if (v36.rem >= 0)
        {
          LOBYTE(v37) = v36.rem;
        }

        else
        {
          v37 = -v36.rem;
        }

        *v34-- = v37 + 48;
      }

      while (v36.quot);
      if (v33 < 0)
      {
        *v34 = 45;
      }

      else
      {
        ++v34;
      }

      v12 = v72 - v34;
      v13 = v34;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (*v67 != 2000)
  {
LABEL_50:
    v57 = +[NSAssertionHandler currentHandler];
    v58 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v57 handleFailureInFunction:v58 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v55 = &stru_1004D2058;
    goto LABEL_47;
  }

  v8 = DWORD2(v68[0]);
  if (DWORD2(v68[0]))
  {
    v9 = 0;
    do
    {
      v10 = ldiv(v8, 10);
      v8 = v10.quot;
      if (v10.rem >= 0)
      {
        LOBYTE(v11) = v10.rem;
      }

      else
      {
        v11 = -v10.rem;
      }

      *(&v71 + v9--) = v11 + 48;
    }

    while (v10.quot);
    v12 = -v9;
    v13 = v72 + v9;
LABEL_54:
    v54 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
    goto LABEL_46;
  }

LABEL_51:
  v55 = @"0";
LABEL_47:

  return v55;
}

+ (void)donateApprovedIdentity:(id)a3
{
  v9 = a3;
  if ([v9 type])
  {
    v3 = [MRDGroupSessionApprovalManager hashForIdentity:v9];
    v4 = BiomeLibrary();
    v5 = [v4 MediaRemote];
    v6 = [v5 GroupSessionRecentParticipant];

    v7 = [[BMMediaRemoteGroupSessionRecentParticipant alloc] initWithHashedUserIdentityIdentifier:v3];
    v8 = [v6 source];
    [v8 sendEvent:v7];
  }
}

+ (void)donateRemovedIdentity:(id)a3
{
  v3 = a3;
  if ([v3 type])
  {
    v4 = [MRDGroupSessionApprovalManager hashForIdentity:v3];
    v5 = BiomeLibrary();
    v6 = [v5 MediaRemote];
    v7 = [v6 GroupSessionRecentParticipant];

    v8 = [v7 pruner];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100064C94;
    v10[3] = &unk_1004B7D98;
    v11 = v4;
    v9 = v4;
    [v8 deleteEventsPassingTest:v10];
  }
}

+ (void)shouldAutoApproveRequest:(id)a3 withSession:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (sub_1001A0314() || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 supportGroupSessionAutoApproval], v11, (v12 & 1) == 0))
  {
    v10[2](v10, 0, -1, 1);
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100064EEC;
    v22[3] = &unk_1004B7DC0;
    v13 = v8;
    v23 = v13;
    v14 = v10;
    v24 = v14;
    v15 = objc_retainBlock(v22);
    v16 = [v13 identity];
    if ([v16 type])
    {
      v17 = [v13 oobKeys];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100065010;
      v18[3] = &unk_1004B7E10;
      v20 = v15;
      v21 = a1;
      v19 = v16;
      [a1 shouldAutoApproveOOBKeys:v17 withSession:v9 completion:v18];
    }

    else
    {
      v14[2](v14, 0, 0, 1);
    }
  }
}

+ (void)shouldAutoApproveIdentity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MRDGroupSessionApprovalManager hashForIdentity:v5];
  v8 = BiomeLibrary();
  v9 = [v8 MediaRemote];
  v10 = [v9 GroupSessionRecentParticipant];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v11 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v12 = [v10 publisherWithOptions:v11];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100065310;
  v20[3] = &unk_1004B7E38;
  v13 = v6;
  v21 = v13;
  v22 = v25;
  v23 = v24;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065338;
  v16[3] = &unk_1004B7E60;
  v14 = v7;
  v17 = v14;
  v18 = v24;
  v19 = v25;
  v15 = [v12 sinkWithCompletion:v20 shouldContinue:v16];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
}

@end