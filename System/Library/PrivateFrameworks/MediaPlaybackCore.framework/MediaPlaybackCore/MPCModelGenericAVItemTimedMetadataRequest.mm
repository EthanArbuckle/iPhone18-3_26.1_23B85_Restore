@interface MPCModelGenericAVItemTimedMetadataRequest
+ (NSArray)metadataIdentifiers;
- (MPCModelGenericAVItemTimedMetadataRequest)initWithGenericObject:(id)a3 timedMetadataGroups:(id)a4 storeRequestContext:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPCModelGenericAVItemTimedMetadataRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v5 = a3;
  v6 = [(MPCModelGenericAVItemTimedMetadataRequest *)self copy];
  v7 = objc_alloc(MEMORY[0x1E69704B8]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke;
  v12[3] = &unk_1E8235460;
  v13 = v6;
  v14 = self;
  v15 = v5;
  v16 = a2;
  v8 = v5;
  v9 = v6;
  v10 = [v7 initWithStartHandler:v12];

  return v10;
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v62 = a2;
  v63 = [*(a1 + 32) previousResponse];
  v64 = a1;
  [*(a1 + 32) timedMetadataGroups];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v120 = 0u;
  v70 = [obj countByEnumeratingWithState:&v117 objects:v124 count:16];
  if (v70)
  {
    v67 = 0;
    v76 = 0;
    v77 = 0;
    v87 = 0;
    v89 = 0;
    v3 = 0;
    v69 = *v118;
    v4 = *MEMORY[0x1E6987840];
    v5 = *MEMORY[0x1E6987738];
    v88 = *MEMORY[0x1E6987720];
    v86 = *MEMORY[0x1E6987718];
    v82 = *MEMORY[0x1E6987728];
    v78 = *MEMORY[0x1E6987738];
    v79 = *MEMORY[0x1E6987740];
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v118 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v6;
        v7 = *(*(&v117 + 1) + 8 * v6);
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v8 = [v7 items];
        v9 = [v8 countByEnumeratingWithState:&v113 objects:v123 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v114;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v114 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v113 + 1) + 8 * i);
              v14 = [v13 keySpace];
              v15 = [v14 isEqualToString:v4];

              if (v15)
              {
                v16 = [v13 key];
                if ([v16 isEqual:v5])
                {
                  [v13 stringValue];
                  v3 = v17 = v3;
                  goto LABEL_55;
                }

                if ([v16 isEqual:v88])
                {
                  [v13 stringValue];
                  v89 = v17 = v89;
                  goto LABEL_55;
                }

                if ([v16 isEqual:v86])
                {
                  [v13 stringValue];
                  v87 = v17 = v87;
                  goto LABEL_55;
                }

                if ([v16 isEqual:v82])
                {
                  v17 = [v13 extraAttributes];
                  v18 = [v17 objectForKey:@"info"];
                  v80 = v18;
                  if ([v18 isEqual:@"com.apple.radio.explicit"])
                  {
                    v19 = [v13 value];
                    objc_opt_class();
                    v83 = v3;
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = v19;
                      v5 = v78;
                      if ([v20 length])
                      {
                        v112 = 0;
                        [v20 getBytes:&v112 length:1];
                        v74 = [MEMORY[0x1E696AD98] numberWithInt:v112 == 1];

                        v19 = v20;
                        v21 = v74;
                        goto LABEL_42;
                      }

                      v19 = v20;
                    }

                    else
                    {
                      v5 = v78;
                      if (objc_opt_respondsToSelector())
                      {
                        [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "charValue") == 1}];
                        v77 = v20 = v77;
                      }

                      else
                      {
                        v20 = v77;
                        v21 = MEMORY[0x1E695E110];
LABEL_42:
                        v77 = v21;
                      }
                    }

LABEL_44:

                    v3 = v83;
                    goto LABEL_45;
                  }

                  if ([v18 isEqual:@"com.apple.radio.adamid"])
                  {
                    v31 = [v13 dataValue];
                    v5 = v78;
                    if (v31)
                    {
                      v83 = v3;
                      v19 = v31;
                      v20 = v76;
                      v76 = v19;
                      goto LABEL_44;
                    }

                    v19 = 0;
LABEL_45:
                  }

                  else
                  {
                    v5 = v78;
                  }

LABEL_55:
                }

                else if ([v16 isEqual:v79])
                {
                  v84 = v3;
                  v17 = [v13 extraAttributes];
                  v22 = [v17 objectForKey:@"info"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v81 = [MEMORY[0x1E696AE88] scannerWithString:v22];
                    if ([v81 scanString:@"artworkURL_" intoString:0])
                    {
                      v23 = [v13 stringValue];
                      if (v23)
                      {
                        v75 = v23;
                        v24 = [MEMORY[0x1E695DFF8] URLWithString:v23];
                        v25 = v81;
                        if (v24)
                        {
                          v72 = v24;
                          v111 = 0;
                          v26 = [v81 scanUpToString:@"x" intoString:&v111];
                          v27 = v111;
                          if (v26)
                          {
                            v71 = v27;
                            v25 = v81;
                            if (([v81 isAtEnd] & 1) == 0)
                            {
                              v28 = [v71 integerValue];
                              v122[0] = v75;
                              v121[0] = @"url";
                              v121[1] = @"width";
                              v65 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
                              v122[1] = v65;
                              v121[2] = @"height";
                              v29 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
                              v122[2] = v29;
                              v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:3];

                              v30 = v67;
                              if (!v67)
                              {
                                v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                              }

                              v67 = v30;
                              [v30 addObject:v66];

                              v25 = v81;
                            }

                            v27 = v71;
                          }

                          else
                          {
                            v25 = v81;
                          }

                          v24 = v72;
                        }

                        v23 = v75;
                      }

                      else
                      {
                        v25 = v81;
                      }
                    }

                    else
                    {
                      v25 = v81;
                    }
                  }

                  v3 = v84;
                  goto LABEL_55;
                }

                continue;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v113 objects:v123 count:16];
          }

          while (v10);
        }

        v6 = v73 + 1;
      }

      while (v73 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v117 objects:v124 count:16];
      if (!v70)
      {
        goto LABEL_63;
      }
    }
  }

  v67 = 0;
  v76 = 0;
  v77 = 0;
  v87 = 0;
  v89 = 0;
  v3 = 0;
LABEL_63:
  v32 = [*(v64 + 32) copy];
  [v32 setPreviousResponse:0];
  if (v3 || v87 || v89 || v67 || (v33 = 0, v77))
  {
    v33 = objc_alloc_init(MPCModelGenericAVItemTimedMetadataStreamFields);
    [(MPCModelGenericAVItemTimedMetadataStreamFields *)v33 setAlbum:v87];
    [(MPCModelGenericAVItemTimedMetadataStreamFields *)v33 setArtist:v89];
    -[MPCModelGenericAVItemTimedMetadataStreamFields setExplicitContent:](v33, "setExplicitContent:", [v77 BOOLValue]);
    [(MPCModelGenericAVItemTimedMetadataStreamFields *)v33 setTitle:v3];
    [(MPCModelGenericAVItemTimedMetadataStreamFields *)v33 setArtworkDictionaries:v67];
  }

  v34 = [v63 adamIDData];
  v35 = v76;
  v85 = v3;
  if ((v76 == v34 || [v76 isEqual:v34]) && v76 && v63)
  {
    v36 = 1;
    v37 = v62;
  }

  else
  {
    v38 = [v63 streamFields];
    if (v33 == v38 || [(MPCModelGenericAVItemTimedMetadataStreamFields *)v33 isEqual:v38])
    {
      v36 = 1;
      v37 = v62;
    }

    else
    {
      v39 = [*(v64 + 32) genericObject];
      if (v33)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_2;
        aBlock[3] = &unk_1E8233588;
        v106 = v89;
        v107 = v67;
        v108 = v87;
        v109 = v3;
        v110 = v33;
        v40 = _Block_copy(aBlock);
        v41 = [v39 type];
        if ((v41 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v61 = [MEMORY[0x1E696AAA8] currentHandler];
          [v61 handleFailureInMethod:*(v64 + 56) object:*(v64 + 40) file:@"MPCModelGenericAVItemTimedMetadataRequest.m" lineNumber:226 description:{@"MPCModelGenericAVItemTimedMetadataRequest: unexepected genericObject type: %ld", v41}];
        }

        v42 = [v39 anyObject];
        v43 = [v39 identifiers];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_7;
        v102[3] = &unk_1E82335B0;
        v103 = v40;
        v104 = v41;
        v44 = v40;
        v45 = [v42 copyWithIdentifiers:v43 block:v102];

        v46 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v45];

        v39 = v46;
      }

      v47 = [[MPCModelGenericAVItemTimedMetadataResponse alloc] initWithRequest:v32 personalizationResponse:0 firstResponse:1 finalResponse:0];
      v48 = objc_alloc_init(MEMORY[0x1E6970818]);
      [v48 appendSection:&stru_1F454A698];
      [v48 appendItem:v39];
      [(MPModelResponse *)v47 setResults:v48];
      [(MPCModelGenericAVItemTimedMetadataResponse *)v47 setStreamFields:v33];
      v49 = *(v64 + 48);
      v37 = v62;
      if (v49)
      {
        (*(v49 + 16))(v49, v47, 0);
      }

      v36 = 0;
      v35 = v76;
    }
  }

  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_9;
  v99[3] = &unk_1E82335D8;
  v101 = *(v64 + 48);
  v50 = v37;
  v100 = v50;
  v51 = _Block_copy(v99);
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_10;
  v94[3] = &unk_1E8233628;
  v52 = v32;
  v95 = v52;
  v53 = v35;
  v96 = v53;
  v54 = v33;
  v97 = v54;
  v55 = v51;
  v98 = v55;
  v56 = _Block_copy(v94);
  if (v53 && ([v53 isEqual:v34] & 1) == 0)
  {
    v58 = objc_alloc_init(MEMORY[0x1E69E4540]);
    [v58 setQualityOfService:25];
    [v58 setTimedMetadataData:v53];
    v59 = [*(v64 + 32) storeRequestContext];
    [v58 setStoreRequestContext:v59];

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_12;
    v90[3] = &unk_1E8233650;
    v91 = *(v64 + 32);
    v92 = v50;
    v93 = v56;
    [v58 performWithResponseHandler:v90];

    goto LABEL_93;
  }

  if ((v36 | [v53 isEqual:v34]) != 1)
  {
    [v50 finish];
LABEL_93:
    v57 = v63;
    goto LABEL_94;
  }

  v57 = v63;
  if (v63 && ([v63 isValid] & 1) == 0)
  {
    v60 = [v63 unpersonalizedContentDescriptors];
    (*(v56 + 2))(v56, v60);
  }

  else
  {
    [v63 setFirstResponse:0];
    (*(v55 + 2))(v55, v63, 0);
  }

LABEL_94:
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_3;
  aBlock[3] = &unk_1E8233510;
  v32 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = [v3 artist];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identifiers];
    v8 = [v6 copyWithIdentifiers:v7 block:v4];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E6970640]);
    v7 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v8 = [v9 initWithIdentifiers:v7 block:v4];
  }

  v10 = v8;

  v24 = v10;
  [v3 setArtist:v10];
  v23 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseArray:*(a1 + 40)];
  v11 = [MEMORY[0x1E6970988] tokenWithImageArtworkInfo:?];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_4;
  v29[3] = &unk_1E8233538;
  v12 = v11;
  v30 = v12;
  v13 = _Block_copy(v29);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_5;
  v25[3] = &unk_1E8233560;
  v26 = *(a1 + 48);
  v14 = v4;
  v27 = v14;
  v15 = v13;
  v28 = v15;
  v16 = _Block_copy(v25);
  v17 = [v3 album];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 identifiers];
    v20 = [v18 copyWithIdentifiers:v19 block:v16];
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E6970630]);
    v19 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v20 = [v21 initWithIdentifiers:v19 block:v16];
  }

  v22 = v20;

  [v3 setAlbum:v22];
  [v3 setTitle:*(a1 + 56)];
  [v3 setExplicitSong:{objc_msgSend(*(a1 + 64), "isExplicitContent")}];
  [v3 setArtworkCatalogBlock:v15];
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69706F8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_8;
  v7[3] = &unk_1E8237020;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performWithoutEnforcement:v7];
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  [*(a1 + 32) finishWithError:v5];
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_10(id *a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69709E0]) initWithUnpersonalizedRequest:a1[4] unpersonalizedContentDescriptors:v3];
  [v4 setMatchAlbumArtistsOnNameAndStoreID:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_11;
  v6[3] = &unk_1E8233600;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = v3;
  v11 = a1[7];
  v5 = v3;
  [v4 performWithResponseHandler:v6];
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 allStorePlatformMetadata];
  v6 = [v5 firstObject];

  if (v6 && ([*(a1 + 32) itemProperties], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(objc_alloc(MEMORY[0x1E69707A0]), "initWithRequestedProperties:", v7), objc_msgSend(*(a1 + 40), "userIdentity"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "genericObjectForStorePlatformMetadata:radioStationContainsVideo:userIdentity:", v6, 0, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11))
  {
    v12 = objc_alloc_init(MEMORY[0x1E6970818]);
    [v12 appendSection:&stru_1F454A698];
    v13 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v11 personalizationStyle:1];
    [v12 appendItem:v13];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) finishWithError:v14];
  }
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_11(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MPCModelGenericAVItemTimedMetadataResponse alloc] initWithRequest:a1[4] personalizationResponse:v3 firstResponse:0 finalResponse:1];

  [(MPCModelGenericAVItemTimedMetadataResponse *)v4 setAdamIDData:a1[5]];
  [(MPCModelGenericAVItemTimedMetadataResponse *)v4 setStreamFields:a1[6]];
  [(MPCModelGenericAVItemTimedMetadataResponse *)v4 setUnpersonalizedContentDescriptors:a1[7]];
  (*(a1[8] + 16))();
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 5)
  {
    v5 = *(a1 + 32);
    if ([v5 type] == 1)
    {
      v4 = [v5 song];
      (*(*(a1 + 40) + 16))();
    }
  }

  else if (v2 == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

id __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E69704A0]);
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v5 = [v2 initWithToken:v3 dataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:a1[4]];
  v4 = [v3 artist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifiers];
    v7 = [v5 copyWithIdentifiers:v6 block:a1[5]];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E6970640]);
    v6 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v7 = [v8 initWithIdentifiers:v6 block:a1[5]];
  }

  v9 = v7;

  [v3 setArtist:v9];
  [v3 setArtworkCatalogBlock:a1[6]];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = MEMORY[0x1E69706F8];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_6;
  v15 = &unk_1E82394D8;
  v17 = &v18;
  v11 = v3;
  v16 = v11;
  [v10 performWithoutEnforcement:&v12];
  if (*(v19 + 24) == 1)
  {
    [v11 setYear:{0, v12, v13, v14, v15}];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __77__MPCModelGenericAVItemTimedMetadataRequest_newOperationWithResponseHandler___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) year];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPCModelGenericAVItemTimedMetadataRequest;
  v4 = [(MPCModelGenericAVItemTimedMetadataRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 11, self->_timedMetadataGroups);
    objc_storeStrong(v5 + 10, self->_storeRequestContext);
    objc_storeStrong(v5 + 8, self->_previousResponse);
    objc_storeStrong(v5 + 9, self->_genericObject);
  }

  return v5;
}

- (MPCModelGenericAVItemTimedMetadataRequest)initWithGenericObject:(id)a3 timedMetadataGroups:(id)a4 storeRequestContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MPCModelGenericAVItemTimedMetadataRequest;
  v12 = [(MPCModelGenericAVItemTimedMetadataRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_genericObject, a3);
    v14 = [v10 copy];
    timedMetadataGroups = v13->_timedMetadataGroups;
    v13->_timedMetadataGroups = v14;

    v16 = [v11 copy];
    storeRequestContext = v13->_storeRequestContext;
    v13->_storeRequestContext = v16;
  }

  return v13;
}

+ (NSArray)metadataIdentifiers
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6987768];
  v6[0] = *MEMORY[0x1E6987778];
  v6[1] = v2;
  v3 = *MEMORY[0x1E6987760];
  v6[2] = *MEMORY[0x1E6987750];
  v6[3] = v3;
  v6[4] = *MEMORY[0x1E6987770];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

@end