@interface GTCaptureArchiveOverrides
+ (id)allowedClasses;
- (GTCaptureArchiveOverrides)init;
- (GTCaptureArchiveOverrides)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureArchiveOverrides

- (id)jsonDictionary
{
  v115 = *MEMORY[0x277D85DE8];
  v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  selfCopy = self;
  obj = [(GTCaptureArchiveOverrides *)self filenameOverrides];
  v73 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
  if (v73)
  {
    v71 = *v100;
    do
    {
      v3 = 0;
      do
      {
        if (*v100 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v3;
        v4 = *(*(&v99 + 1) + 8 * v3);
        filenameOverrides = [(GTCaptureArchiveOverrides *)selfCopy filenameOverrides];
        v77 = v4;
        v6 = [filenameOverrides objectForKeyedSubscript:v4];

        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v95 objects:v113 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v96;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v96 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v8 objectForKeyedSubscript:*(*(&v95 + 1) + 8 * i)];
              v111[0] = @"originalFilename";
              originalFilename = [v13 originalFilename];
              v112[0] = originalFilename;
              v111[1] = @"overrideFilename";
              overrideFilename = [v13 overrideFilename];
              v112[1] = overrideFilename;
              v111[2] = @"exportToolVersion";
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "exportToolVersion")}];
              v112[2] = v16;
              v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:3];
              [v7 setObject:v17 forKeyedSubscript:v77];
            }

            v10 = [v8 countByEnumeratingWithState:&v95 objects:v113 count:16];
          }

          while (v10);
        }

        [v55 setObject:v7 forKeyedSubscript:v77];
        v3 = v75 + 1;
      }

      while (v75 + 1 != v73);
      v73 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
    }

    while (v73);
  }

  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  heapTextureRestoreOverrides = [(GTCaptureArchiveOverrides *)selfCopy heapTextureRestoreOverrides];
  v56 = [heapTextureRestoreOverrides countByEnumeratingWithState:&v91 objects:v110 count:16];
  if (v56)
  {
    v53 = *v92;
    do
    {
      v18 = 0;
      do
      {
        if (*v92 != v53)
        {
          objc_enumerationMutation(heapTextureRestoreOverrides);
        }

        v58 = v18;
        v19 = *(*(&v91 + 1) + 8 * v18);
        heapTextureRestoreOverrides2 = [(GTCaptureArchiveOverrides *)selfCopy heapTextureRestoreOverrides];
        v57 = v19;
        v21 = [heapTextureRestoreOverrides2 objectForKeyedSubscript:v19];

        v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v63 = v21;
        v62 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
        if (v62)
        {
          v60 = *v88;
          do
          {
            v22 = 0;
            do
            {
              if (*v88 != v60)
              {
                objc_enumerationMutation(v63);
              }

              v64 = *(*(&v87 + 1) + 8 * v22);
              v65 = v22;
              v23 = [v63 objectForKeyedSubscript:?];
              v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              obja = v23;
              v68 = [obja countByEnumeratingWithState:&v83 objects:v108 count:16];
              if (v68)
              {
                v66 = *v84;
                do
                {
                  for (j = 0; j != v68; ++j)
                  {
                    if (*v84 != v66)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v25 = *(*(&v83 + 1) + 8 * j);
                    v26 = [obja objectForKeyedSubscript:v25];
                    v106[0] = @"slice";
                    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "slice")}];
                    v107[0] = v78;
                    v106[1] = @"mipLevel";
                    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "mipLevel")}];
                    v107[1] = v76;
                    v106[2] = @"depthPlane";
                    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "depthPlane")}];
                    v107[2] = v74;
                    v106[3] = @"plane";
                    plane = [v25 plane];
                    if (plane)
                    {
                      [v25 plane];
                    }

                    else
                    {
                      [MEMORY[0x277CBEB68] null];
                    }
                    v27 = ;
                    v107[3] = v27;
                    v106[4] = @"filename";
                    filename = [v26 filename];
                    v107[4] = filename;
                    v106[5] = @"fileSize";
                    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "fileSize")}];
                    v107[5] = v29;
                    v106[6] = @"width";
                    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "width")}];
                    v107[6] = v30;
                    v106[7] = @"height";
                    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "height")}];
                    v107[7] = v31;
                    v106[8] = @"bytesPerRow";
                    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "bytesPerRow")}];
                    v107[8] = v32;
                    v106[9] = @"bytesPerImage";
                    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "bytesPerImage")}];
                    v107[9] = v33;
                    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:10];
                    [v67 addObject:v34];
                  }

                  v68 = [obja countByEnumeratingWithState:&v83 objects:v108 count:16];
                }

                while (v68);
              }

              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v64];
              [v61 setObject:v67 forKeyedSubscript:v35];

              v22 = v65 + 1;
            }

            while (v65 + 1 != v62);
            v62 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
          }

          while (v62);
        }

        [v54 setObject:v61 forKeyedSubscript:v57];
        v18 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [heapTextureRestoreOverrides countByEnumeratingWithState:&v91 objects:v110 count:16];
    }

    while (v56);
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  reverseAliasMap = [(GTCaptureArchiveOverrides *)selfCopy reverseAliasMap];
  v38 = [reverseAliasMap countByEnumeratingWithState:&v79 objects:v105 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v80;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v80 != v40)
        {
          objc_enumerationMutation(reverseAliasMap);
        }

        v42 = *(*(&v79 + 1) + 8 * k);
        reverseAliasMap2 = [(GTCaptureArchiveOverrides *)selfCopy reverseAliasMap];
        v44 = [reverseAliasMap2 objectForKeyedSubscript:v42];
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v42];
        [v36 setObject:v44 forKeyedSubscript:v45];
      }

      v39 = [reverseAliasMap countByEnumeratingWithState:&v79 objects:v105 count:16];
    }

    while (v39);
  }

  v103[0] = @"filenameOverrides";
  v103[1] = @"heapTextureRestoreOverrides";
  v104[0] = v55;
  v104[1] = v54;
  v103[2] = @"heapExtractedTextures";
  v46 = [(NSArray *)selfCopy->_heapExtractedTextures copy];
  v104[2] = v46;
  v103[3] = @"reverseAliasMap";
  v47 = [v36 copy];
  v104[3] = v47;
  v103[4] = @"heapAccelerationStructures";
  v48 = [(NSDictionary *)selfCopy->_heapAccelerationStructures copy];
  v104[4] = v48;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:5];

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

- (GTCaptureArchiveOverrides)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = GTCaptureArchiveOverrides;
  v5 = [(GTCaptureArchiveOverrides *)&v33 init];
  if (v5)
  {
    allowedClasses = [coderCopy allowedClasses];
    v7 = [coderCopy decodeObjectOfClasses:allowedClasses forKey:@"filenameOverrides"];
    filenameOverrides = v5->_filenameOverrides;
    v5->_filenameOverrides = v7;

    allowedClasses2 = [coderCopy allowedClasses];
    v10 = [coderCopy decodeObjectOfClasses:allowedClasses2 forKey:@"heapTextureRestoreOverrides"];
    p_heapTextureRestoreOverrides = &v5->_heapTextureRestoreOverrides;
    heapTextureRestoreOverrides = v5->_heapTextureRestoreOverrides;
    v5->_heapTextureRestoreOverrides = v10;

    allowedClasses3 = [coderCopy allowedClasses];
    v14 = [coderCopy decodeObjectOfClasses:allowedClasses3 forKey:@"heapExtractedTextures"];
    p_heapExtractedTextures = &v5->_heapExtractedTextures;
    heapExtractedTextures = v5->_heapExtractedTextures;
    v5->_heapExtractedTextures = v14;

    allowedClasses4 = [coderCopy allowedClasses];
    v18 = [coderCopy decodeObjectOfClasses:allowedClasses4 forKey:@"reverseAliasMap"];
    p_reverseAliasMap = &v5->_reverseAliasMap;
    reverseAliasMap = v5->_reverseAliasMap;
    v5->_reverseAliasMap = v18;

    allowedClasses5 = [coderCopy allowedClasses];
    v22 = [coderCopy decodeObjectOfClasses:allowedClasses5 forKey:@"heapAccelerationStructures"];
    p_heapAccelerationStructures = &v5->_heapAccelerationStructures;
    heapAccelerationStructures = v5->_heapAccelerationStructures;
    v5->_heapAccelerationStructures = v22;

    v25 = MEMORY[0x277CBEC10];
    if (v5->_filenameOverrides)
    {
      v26 = v5->_filenameOverrides;
    }

    else
    {
      v26 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_filenameOverrides, v26);
    if (*p_heapTextureRestoreOverrides)
    {
      v27 = *p_heapTextureRestoreOverrides;
    }

    else
    {
      v27 = v25;
    }

    objc_storeStrong(&v5->_heapTextureRestoreOverrides, v27);
    if (*p_heapExtractedTextures)
    {
      v28 = *p_heapExtractedTextures;
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_heapExtractedTextures, v28);
    if (*p_reverseAliasMap)
    {
      v29 = *p_reverseAliasMap;
    }

    else
    {
      v29 = v25;
    }

    objc_storeStrong(&v5->_reverseAliasMap, v29);
    if (*p_heapAccelerationStructures)
    {
      v30 = *p_heapAccelerationStructures;
    }

    else
    {
      v30 = v25;
    }

    objc_storeStrong(&v5->_heapAccelerationStructures, v30);
    v31 = v5;
  }

  return v5;
}

- (GTCaptureArchiveOverrides)init
{
  v11.receiver = self;
  v11.super_class = GTCaptureArchiveOverrides;
  v2 = [(GTCaptureArchiveOverrides *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    filenameOverrides = v2->_filenameOverrides;
    v2->_filenameOverrides = v3;

    heapTextureRestoreOverrides = v2->_heapTextureRestoreOverrides;
    v2->_heapTextureRestoreOverrides = 0;

    heapExtractedTextures = v2->_heapExtractedTextures;
    v2->_heapExtractedTextures = 0;

    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    reverseAliasMap = v2->_reverseAliasMap;
    v2->_reverseAliasMap = v7;

    v9 = v2;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  filenameOverrides = self->_filenameOverrides;
  coderCopy = coder;
  [coderCopy encodeObject:filenameOverrides forKey:@"filenameOverrides"];
  [coderCopy encodeObject:self->_heapTextureRestoreOverrides forKey:@"heapTextureRestoreOverrides"];
  [coderCopy encodeObject:self->_heapExtractedTextures forKey:@"heapExtractedTextures"];
  [coderCopy encodeObject:self->_reverseAliasMap forKey:@"reverseAliasMap"];
  [coderCopy encodeObject:self->_heapAccelerationStructures forKey:@"heapAccelerationStructures"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTCaptureArchiveOverrides);
  filenameOverrides = [(GTCaptureArchiveOverrides *)self filenameOverrides];
  [(GTCaptureArchiveOverrides *)v4 setFilenameOverrides:filenameOverrides];

  heapTextureRestoreOverrides = [(GTCaptureArchiveOverrides *)self heapTextureRestoreOverrides];
  [(GTCaptureArchiveOverrides *)v4 setHeapTextureRestoreOverrides:heapTextureRestoreOverrides];

  heapExtractedTextures = [(GTCaptureArchiveOverrides *)self heapExtractedTextures];
  [(GTCaptureArchiveOverrides *)v4 setHeapExtractedTextures:heapExtractedTextures];

  reverseAliasMap = [(GTCaptureArchiveOverrides *)self reverseAliasMap];
  [(GTCaptureArchiveOverrides *)v4 setReverseAliasMap:reverseAliasMap];

  return v4;
}

+ (id)allowedClasses
{
  if (allowedClasses_onceToken != -1)
  {
    dispatch_once(&allowedClasses_onceToken, &__block_literal_global_11433);
  }

  v3 = allowedClasses_allowedClasses;

  return v3;
}

void __43__GTCaptureArchiveOverrides_allowedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = allowedClasses_allowedClasses;
  allowedClasses_allowedClasses = v9;
}

@end