@interface GzVCsVtcKNcQqqNF
- (void)MypqGKKWznx4xnYa:(id)ya l8OCYbP9LFIvnTwG:(unint64_t)g ygOPXTiKN0J02x0j:(id)j02x0j;
- (void)MypqGKKWznx4xnYa:(id)ya ygOPXTiKN0J02x0j:(id)j02x0j;
- (void)t5yVezCKaX2Zrwrw:(id)zrwrw uXxcS3vcKdsH38zZ:(id)z;
- (void)vffg4lwI2HftPvpO:(id)o;
@end

@implementation GzVCsVtcKNcQqqNF

- (void)MypqGKKWznx4xnYa:(id)ya ygOPXTiKN0J02x0j:(id)j02x0j
{
  v29[1] = *MEMORY[0x1E69E9840];
  yaCopy = ya;
  j02x0jCopy = j02x0j;
  if (yaCopy)
  {
    v21 = +[Lt10zus2DOk3OfFf sharedInstance];
    hkbEJeZjAQnItubK = [yaCopy HkbEJeZjAQnItubK];
    profileIDs = [yaCopy profileIDs];
    tbX4HHO0pTPaerrJ = [yaCopy TbX4HHO0pTPaerrJ];
    bGiN5h2SLMRO6B9R = [yaCopy BGiN5h2SLMRO6B9R];
    rU1LRx5aI44CETG8 = [yaCopy rU1LRx5aI44CETG8];
    yNHDWo3TCV = [yaCopy yNHDWo3TCV];
    zeXRCfLmM5cdkEtz = [yaCopy zeXRCfLmM5cdkEtz];
    s08uY31jbmOEDLrH = [yaCopy S08uY31jbmOEDLrH];
    hostChallenge = [yaCopy hostChallenge];
    challengeResponse = [yaCopy challengeResponse];
    seid = [yaCopy seid];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_ygOPXTiKN0J02x0j___block_invoke;
    v26[3] = &unk_1E85EDDD8;
    v27 = j02x0jCopy;
    v18 = s08uY31jbmOEDLrH;
    v12 = v21;
    [v21 Z8aAH7stm0EYhyxg:hkbEJeZjAQnItubK dhAnc7b9U376IHnX:profileIDs xz5EHXEN4FjlhJbi:tbX4HHO0pTPaerrJ uhVTXyAfCFn7u0Ue:bGiN5h2SLMRO6B9R EQUjQp7JcQbqcPcD:rU1LRx5aI44CETG8 A5wDLa5TFdFZlz3A:yNHDWo3TCV TJKMyOe6zn5PdGIr:zeXRCfLmM5cdkEtz eCqgGM0WcnHOslnr:0 eCszfxdv3kUXvhgV:v18 uWp4aZpP2vLhc04Q:hostChallenge QZYtNpvp0hKd248p:challengeResponse oCwPYmtRv8s31KUH:seid completion:v26];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [mainBundle localizedStringForKey:@"empty request" value:&stru_1F56D1DE0 table:0];
    v29[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v12 = [v13 errorWithDomain:@"com.apple.asd.ca" code:-27100 userInfo:v16];

    (*(j02x0jCopy + 2))(j02x0jCopy, 0, 0, 0xFFFFFFFFLL, v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __54__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_ygOPXTiKN0J02x0j___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (v10 && v9 && !a6)
  {
    v26 = 0;
    v27 = 0;
    bcgsyabc74vz12([v10 bytes], objc_msgSend(v10, "length"), &v27);
    if (v12)
    {
      v13 = v12;
      free(v27);
      v14 = *(a1 + 32);
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v17 = [v15 errorWithDomain:v16 code:v13 userInfo:0];
      (*(v14 + 16))(v14, 0, 0, 0xFFFFFFFFLL, v17);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v18 initWithBytes:v27 length:{objc_msgSend(v11, "length")}];
      free(v27);
      bcgsyabc74vz12([v9 bytes], objc_msgSend(v9, "length"), &v26);
      if (!v19)
      {
        v24 = objc_alloc(MEMORY[0x1E695DEF0]);
        v25 = [v24 initWithBytes:v26 length:{objc_msgSend(v9, "length")}];
        free(v26);
        (*(*(a1 + 32) + 16))();

        goto LABEL_10;
      }

      v20 = v19;
      free(v26);
      v21 = *(a1 + 32);
      v22 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v23 = [v22 errorWithDomain:v17 code:v20 userInfo:0];
      (*(v21 + 16))(v21, 0, 0, 0xFFFFFFFFLL, v23);
    }

LABEL_10:
    goto LABEL_11;
  }

  (*(*(a1 + 32) + 16))();
LABEL_11:
}

- (void)t5yVezCKaX2Zrwrw:(id)zrwrw uXxcS3vcKdsH38zZ:(id)z
{
  zCopy = z;
  zrwrwCopy = zrwrw;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__GzVCsVtcKNcQqqNF_t5yVezCKaX2Zrwrw_uXxcS3vcKdsH38zZ___block_invoke;
  v9[3] = &unk_1E85EDE00;
  v10 = zCopy;
  v8 = zCopy;
  [v7 ZfE6lVphNUVrZcKx:zrwrwCopy completion:v9];
}

- (void)MypqGKKWznx4xnYa:(id)ya l8OCYbP9LFIvnTwG:(unint64_t)g ygOPXTiKN0J02x0j:(id)j02x0j
{
  v32[1] = *MEMORY[0x1E69E9840];
  yaCopy = ya;
  j02x0jCopy = j02x0j;
  if (yaCopy)
  {
    v9 = +[Lt10zus2DOk3OfFf sharedInstance];
    hkbEJeZjAQnItubK = [yaCopy HkbEJeZjAQnItubK];
    profileIDs = [yaCopy profileIDs];
    tbX4HHO0pTPaerrJ = [yaCopy TbX4HHO0pTPaerrJ];
    bGiN5h2SLMRO6B9R = [yaCopy BGiN5h2SLMRO6B9R];
    rU1LRx5aI44CETG8 = [yaCopy rU1LRx5aI44CETG8];
    yNHDWo3TCV = [yaCopy yNHDWo3TCV];
    zeXRCfLmM5cdkEtz = [yaCopy zeXRCfLmM5cdkEtz];
    s08uY31jbmOEDLrH = [yaCopy S08uY31jbmOEDLrH];
    hostChallenge = [yaCopy hostChallenge];
    challengeResponse = [yaCopy challengeResponse];
    [yaCopy seid];
    v14 = v13 = j02x0jCopy;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __71__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_l8OCYbP9LFIvnTwG_ygOPXTiKN0J02x0j___block_invoke;
    v29[3] = &unk_1E85EDDD8;
    v30 = v13;
    v28 = v9;
    [v9 Z8aAH7stm0EYhyxg:hkbEJeZjAQnItubK dhAnc7b9U376IHnX:profileIDs xz5EHXEN4FjlhJbi:tbX4HHO0pTPaerrJ uhVTXyAfCFn7u0Ue:bGiN5h2SLMRO6B9R EQUjQp7JcQbqcPcD:rU1LRx5aI44CETG8 A5wDLa5TFdFZlz3A:yNHDWo3TCV TJKMyOe6zn5PdGIr:zeXRCfLmM5cdkEtz eCqgGM0WcnHOslnr:g eCszfxdv3kUXvhgV:s08uY31jbmOEDLrH uWp4aZpP2vLhc04Q:hostChallenge QZYtNpvp0hKd248p:challengeResponse oCwPYmtRv8s31KUH:v14 completion:v29];

    j02x0jCopy = v13;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [mainBundle localizedStringForKey:@"empty request" value:&stru_1F56D1DE0 table:0];
    v32[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v19 = [v15 errorWithDomain:@"com.apple.asd.ca" code:-27100 userInfo:v18];

    v28 = v19;
    (*(j02x0jCopy + 2))(j02x0jCopy, 0, 0, 0, 0xFFFFFFFFLL, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __71__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_l8OCYbP9LFIvnTwG_ygOPXTiKN0J02x0j___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (!a6)
  {
    v26 = 0;
    v27 = 0;
    bcgsyabc74vz12([v10 bytes], objc_msgSend(v10, "length"), &v27);
    if (v12)
    {
      v13 = v12;
      free(v27);
      v14 = *(a1 + 32);
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v17 = [v15 errorWithDomain:v16 code:v13 userInfo:0];
      (*(v14 + 16))(v14, 0, 0, 0, 0xFFFFFFFFLL, v17);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v18 initWithBytes:v27 length:{objc_msgSend(v11, "length")}];
      free(v27);
      bcgsyabc74vz12([v9 bytes], objc_msgSend(v9, "length"), &v26);
      if (!v19)
      {
        v24 = objc_alloc(MEMORY[0x1E695DEF0]);
        v25 = [v24 initWithBytes:v26 length:{objc_msgSend(v9, "length")}];
        free(v26);
        (*(*(a1 + 32) + 16))();

        goto LABEL_8;
      }

      v20 = v19;
      free(v26);
      v21 = *(a1 + 32);
      v22 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v23 = [v22 errorWithDomain:v17 code:v20 userInfo:0];
      (*(v21 + 16))(v21, 0, 0, 0, 0xFFFFFFFFLL, v23);
    }

LABEL_8:
    goto LABEL_9;
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (void)vffg4lwI2HftPvpO:(id)o
{
  oCopy = o;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__GzVCsVtcKNcQqqNF_vffg4lwI2HftPvpO___block_invoke;
  v6[3] = &unk_1E85EDE28;
  v7 = oCopy;
  v5 = oCopy;
  [v4 vffg4lwI2HftPvpO:v6];
}

@end