@interface WFAVAssetContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (AVAsset)asset;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (CLLocation)location;
- (WFFileType)preferredFileType;
- (id)duration;
- (id)frameRate;
- (id)generateExportSessionForType:(id)a3;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)metadataItemForCommonKey:(id)a3;
- (id)supportedTypes;
- (void)generateFileRepresentation:(id)a3 forType:(id)a4 metadata:(id)a5 options:(id)a6;
- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)getPreferredFileSize:(id)a3;
@end

@implementation WFAVAssetContentItem

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = [(WFAVAssetContentItem *)self metadataItemForCommonKey:@"artwork"];
    v6 = v5 != 0;
  }

  else if ([v4 isEqualToUTType:*MEMORY[0x277CE1D08]] & 1) != 0 || (objc_msgSend(v4, "isEqualToUTType:", *MEMORY[0x277CE1D00]) & 1) != 0 || (objc_msgSend(v4, "isEqualToUTType:", *MEMORY[0x277CE1EC0]))
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFAVAssetContentItem;
    v6 = [(WFGenericFileContentItem *)&v8 canGenerateRepresentationForType:v4];
  }

  return v6;
}

- (id)supportedTypes
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D79F68];
  v5 = [(WFAVAssetContentItem *)self generateExportSessionForType:0];
  v6 = [v5 supportedFileTypes];
  v7 = [v4 typesFromStrings:v6];
  [v3 addObjectsFromArray:v7];

  v8 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A418]];
  LODWORD(v5) = [v3 containsObject:v8];

  if (v5)
  {
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DE0]];
    [v3 addObject:v9];

    v10 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1CE0]];
    [v3 addObject:v10];
  }

  v11 = [WFObjectType typeWithClass:getAVAssetClass()];
  [v3 addObject:v11];

  v12 = [WFObjectType typeWithClass:getAVMutableMovieClass()];
  [v3 addObject:v12];

  v13 = [(WFAVAssetContentItem *)self metadataItemForCommonKey:@"artwork"];

  if (v13)
  {
    v14 = [WFObjectType typeWithClass:objc_opt_class()];
    [v3 addObject:v14];
  }

  v15 = [WFObjectType typeWithClass:objc_opt_class()];
  [v3 addObject:v15];

  return v3;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromClass(a3);
  v8 = [@"AVAsset" isEqualToString:v7];

  if (v8)
  {
    v9 = [(WFContentItem *)self internalRepresentationType];
    v10 = [(WFContentItem *)self fileRepresentationForType:v9];

    if (v10)
    {
      v11 = [v10 fileURL];
      v12 = MEMORY[0x277CBEBC0];
      v13 = NSHomeDirectory();
      v14 = [v12 fileURLWithPath:v13 isDirectory:1];
      if ([v11 wf_isContainedByDirectoryAtURL:v14])
      {
      }

      else
      {
        v20 = [v10 fileURL];
        v21 = +[WFTemporaryFileManager sharedAppGroupDirectoryURL];
        v22 = [v20 wf_isContainedByDirectoryAtURL:v21];

        if ((v22 & 1) == 0)
        {
          v23 = [v10 copy];

          v31 = v23;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v25 = [(WFContentItem *)self internalRepresentationType];
          [(WFContentItem *)self setFileRepresentations:v24 forType:v25];

          v10 = v23;
        }
      }

      AVURLAssetClass_9810 = getAVURLAssetClass_9810();
      v27 = [v10 fileURL];
      v28 = [AVURLAssetClass_9810 assetWithURL:v27];

      v29 = [v10 wfName];
      v15 = [WFObjectRepresentation object:v28 named:v29];
    }

    else
    {
      v10 = getWFContentItemLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v33 = "[WFAVAssetContentItem generateObjectRepresentationForClass:options:error:]";
        _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_FAULT, "%s Failed to generate AVAsset repersentation; fileRepresentationForType: returned nil", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v15 = 0;
      goto LABEL_21;
    }

    v10 = [(WFAVAssetContentItem *)self metadataItemForCommonKey:@"artwork"];
    v16 = [v10 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 objectForKey:@"data"];
      v18 = [MEMORY[0x277D79FC8] imageWithData:v17];
      if (v18)
      {
        v19 = [(WFContentItem *)self name];
        v15 = [WFObjectRepresentation object:v18 named:v19];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_21:

  return v15;
}

- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v7 = a3;
  if ([(objc_class *)a5 isSubclassOfClass:getAVMutableMovieClass()])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__WFAVAssetContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v9[3] = &unk_278346B40;
    v11 = a5;
    v9[4] = self;
    v10 = v7;
    [(WFContentItem *)self getFileRepresentation:v9 forType:0];
  }

  else
  {
    v8 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (*(v7 + 2))(v7, 0, 0, v8);
  }
}

void __70__WFAVAssetContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    AVMutableMovieClass = getAVMutableMovieClass();
    v8 = [v5 fileURL];
    v9 = [AVMutableMovieClass assetWithURL:v8];

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) name];
    (*(v10 + 16))(v10, v9, v11, 0);
  }

  else
  {
    v12 = getWFContentItemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = NSStringFromClass(*(a1 + 48));
      if (v6)
      {
        v14 = [v6 localizedDescription];
      }

      else
      {
        v14 = @"couldn't generate an asset file";
      }

      v15 = 136315650;
      v16 = "[WFAVAssetContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_FAULT, "%s Failed to generate %{public}@ representation: %{public}@", &v15, 0x20u);
      if (v6)
      {
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)generateFileRepresentation:(id)a3 forType:(id)a4 metadata:(id)a5 options:(id)a6
{
  v179 = *MEMORY[0x277D85DE8];
  v139 = a3;
  v10 = a4;
  v140 = a5;
  v134 = v10;
  v135 = a6;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [(WFAVAssetContentItem *)self preferredFileType];
  }

  v12 = v11;
  v137 = v11;
  if ([v11 conformsToUTType:*MEMORY[0x277CE1DE0]])
  {
    v13 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A418]];
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;
  v15 = [(WFContentItem *)self name];
  v16 = [WFFileRepresentation proposedFilenameForFile:v15 ofType:v14];
  v138 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v16];

  v17 = [(WFAVAssetContentItem *)self asset];
  if (v17)
  {
    getAVURLAssetClass_9810();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v136 = v19;
  v20 = [v19 URL];
  v21 = [v20 wfFileType];
  v22 = [v14 isEqualToType:v21];

  if (v22 && ![v140 count])
  {
    v96 = [MEMORY[0x277CCAA00] defaultManager];
    v97 = [v136 URL];
    v149 = 0;
    v98 = [v96 copyItemAtURL:v97 toURL:v138 error:&v149];
    v99 = v149;

    if (v98)
    {
      v100 = [WFFileRepresentation fileWithURL:v138 options:1 ofType:v137];
      v168 = v100;
      v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:1];
      [(WFContentItem *)self setFileRepresentations:v101 forType:v137];

      v139[2](v139, v100, 0);
    }

    else
    {
      (v139)[2](v139, 0, v99);
    }
  }

  else
  {
    v128 = *MEMORY[0x277CE1CE0];
    v23 = [MEMORY[0x277D79F68] typeWithUTType:?];
    v24 = [v14 conformsToType:v23];

    if (v24)
    {
      v25 = [(WFAVAssetContentItem *)self asset];
      v26 = [(WFContentItem *)self name];
      v27 = v25;
      v28 = v26;
      v127 = v140;
      v132 = v139;
      v171 = 0;
      v172 = &v171;
      v173 = 0x2050000000;
      v29 = getAVAssetReaderClass_softClass;
      v174 = getAVAssetReaderClass_softClass;
      if (!getAVAssetReaderClass_softClass)
      {
        v150 = MEMORY[0x277D85DD0];
        v151 = 3221225472;
        v152 = __getAVAssetReaderClass_block_invoke;
        v153 = &unk_27834A178;
        v154 = &v171;
        __getAVAssetReaderClass_block_invoke(&v150);
        v29 = v172[3];
      }

      v30 = v29;
      _Block_object_dispose(&v171, 8);
      v163 = 0;
      v130 = [v29 assetReaderWithAsset:v27 error:&v163];
      v131 = v163;
      v31 = getAVMediaTypeAudio();
      v32 = [v27 tracksWithMediaType:v31];
      v133 = [v32 firstObject];

      if (!v133 || ([v133 formatDescriptions], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count") == 1, v33, !v34))
      {
        v132[2](v132, 0, 0);
LABEL_73:

        goto LABEL_74;
      }

      v35 = malloc_type_calloc(0x20uLL, 1uLL, 0x89CF0811uLL);
      *v35 = 6619138;
      v171 = 0;
      v172 = &v171;
      v173 = 0x2020000000;
      v36 = getAVFormatIDKeySymbolLoc_ptr;
      v174 = getAVFormatIDKeySymbolLoc_ptr;
      if (!getAVFormatIDKeySymbolLoc_ptr)
      {
        v150 = MEMORY[0x277D85DD0];
        v151 = 3221225472;
        v152 = __getAVFormatIDKeySymbolLoc_block_invoke;
        v153 = &unk_27834A178;
        v154 = &v171;
        v37 = AVFoundationLibrary_4644();
        v38 = dlsym(v37, "AVFormatIDKey");
        *(v154[1] + 3) = v38;
        getAVFormatIDKeySymbolLoc_ptr = *(v154[1] + 3);
        v36 = v172[3];
      }

      _Block_object_dispose(&v171, 8);
      if (v36)
      {
        v125 = *v36;
        v169[0] = v125;
        v171 = &unk_282F79FB8;
        v164 = 0;
        v165 = &v164;
        v166 = 0x2020000000;
        v39 = getAVLinearPCMIsFloatKeySymbolLoc_ptr;
        v167 = getAVLinearPCMIsFloatKeySymbolLoc_ptr;
        if (!getAVLinearPCMIsFloatKeySymbolLoc_ptr)
        {
          v150 = MEMORY[0x277D85DD0];
          v151 = 3221225472;
          v152 = __getAVLinearPCMIsFloatKeySymbolLoc_block_invoke;
          v153 = &unk_27834A178;
          v154 = &v164;
          v40 = AVFoundationLibrary_4644();
          v41 = dlsym(v40, "AVLinearPCMIsFloatKey");
          *(v154[1] + 3) = v41;
          getAVLinearPCMIsFloatKeySymbolLoc_ptr = *(v154[1] + 3);
          v39 = v165[3];
        }

        v123 = v28;
        _Block_object_dispose(&v164, 8);
        if (v39)
        {
          v42 = *v39;
          v169[1] = v42;
          v43 = MEMORY[0x277CBEC28];
          v172 = MEMORY[0x277CBEC28];
          v164 = 0;
          v165 = &v164;
          v166 = 0x2020000000;
          v44 = getAVLinearPCMBitDepthKeySymbolLoc_ptr;
          v167 = getAVLinearPCMBitDepthKeySymbolLoc_ptr;
          if (!getAVLinearPCMBitDepthKeySymbolLoc_ptr)
          {
            v150 = MEMORY[0x277D85DD0];
            v151 = 3221225472;
            v152 = __getAVLinearPCMBitDepthKeySymbolLoc_block_invoke;
            v153 = &unk_27834A178;
            v154 = &v164;
            v45 = AVFoundationLibrary_4644();
            v46 = dlsym(v45, "AVLinearPCMBitDepthKey");
            *(v154[1] + 3) = v46;
            getAVLinearPCMBitDepthKeySymbolLoc_ptr = *(v154[1] + 3);
            v44 = v165[3];
          }

          _Block_object_dispose(&v164, 8);
          if (v44)
          {
            v47 = *v44;
            v169[2] = v47;
            v173 = &unk_282F79FD0;
            v164 = 0;
            v165 = &v164;
            v166 = 0x2020000000;
            v48 = getAVLinearPCMIsNonInterleavedSymbolLoc_ptr;
            v167 = getAVLinearPCMIsNonInterleavedSymbolLoc_ptr;
            if (!getAVLinearPCMIsNonInterleavedSymbolLoc_ptr)
            {
              v150 = MEMORY[0x277D85DD0];
              v151 = 3221225472;
              v152 = __getAVLinearPCMIsNonInterleavedSymbolLoc_block_invoke;
              v153 = &unk_27834A178;
              v154 = &v164;
              v49 = AVFoundationLibrary_4644();
              v50 = dlsym(v49, "AVLinearPCMIsNonInterleaved");
              *(v154[1] + 3) = v50;
              getAVLinearPCMIsNonInterleavedSymbolLoc_ptr = *(v154[1] + 3);
              v48 = v165[3];
            }

            _Block_object_dispose(&v164, 8);
            if (v48)
            {
              v51 = *v48;
              v169[3] = v51;
              v174 = v43;
              v164 = 0;
              v165 = &v164;
              v166 = 0x2020000000;
              v52 = getAVLinearPCMIsBigEndianKeySymbolLoc_ptr;
              v167 = getAVLinearPCMIsBigEndianKeySymbolLoc_ptr;
              if (!getAVLinearPCMIsBigEndianKeySymbolLoc_ptr)
              {
                v150 = MEMORY[0x277D85DD0];
                v151 = 3221225472;
                v152 = __getAVLinearPCMIsBigEndianKeySymbolLoc_block_invoke;
                v153 = &unk_27834A178;
                v154 = &v164;
                v53 = AVFoundationLibrary_4644();
                v54 = dlsym(v53, "AVLinearPCMIsBigEndianKey");
                *(v154[1] + 3) = v54;
                getAVLinearPCMIsBigEndianKeySymbolLoc_ptr = *(v154[1] + 3);
                v52 = v165[3];
              }

              _Block_object_dispose(&v164, 8);
              if (v52)
              {
                v121 = *v52;
                v169[4] = v121;
                v175 = MEMORY[0x277CBEC38];
                v164 = 0;
                v165 = &v164;
                v166 = 0x2020000000;
                v55 = getAVSampleRateKeySymbolLoc_ptr;
                v167 = getAVSampleRateKeySymbolLoc_ptr;
                if (!getAVSampleRateKeySymbolLoc_ptr)
                {
                  v150 = MEMORY[0x277D85DD0];
                  v151 = 3221225472;
                  v152 = __getAVSampleRateKeySymbolLoc_block_invoke;
                  v153 = &unk_27834A178;
                  v154 = &v164;
                  v56 = AVFoundationLibrary_4644();
                  v57 = dlsym(v56, "AVSampleRateKey");
                  *(v154[1] + 3) = v57;
                  getAVSampleRateKeySymbolLoc_ptr = *(v154[1] + 3);
                  v55 = v165[3];
                }

                _Block_object_dispose(&v164, 8);
                if (v55)
                {
                  v120 = *v55;
                  v169[5] = v120;
                  v176 = &unk_282F79FE8;
                  v164 = 0;
                  v165 = &v164;
                  v166 = 0x2020000000;
                  v58 = getAVNumberOfChannelsKeySymbolLoc_ptr;
                  v167 = getAVNumberOfChannelsKeySymbolLoc_ptr;
                  if (!getAVNumberOfChannelsKeySymbolLoc_ptr)
                  {
                    v150 = MEMORY[0x277D85DD0];
                    v151 = 3221225472;
                    v152 = __getAVNumberOfChannelsKeySymbolLoc_block_invoke;
                    v153 = &unk_27834A178;
                    v154 = &v164;
                    v59 = AVFoundationLibrary_4644();
                    v60 = dlsym(v59, "AVNumberOfChannelsKey");
                    *(v154[1] + 3) = v60;
                    getAVNumberOfChannelsKeySymbolLoc_ptr = *(v154[1] + 3);
                    v58 = v165[3];
                  }

                  _Block_object_dispose(&v164, 8);
                  if (v58)
                  {
                    v61 = *v58;
                    v169[6] = v61;
                    v177 = &unk_282F7A000;
                    v164 = 0;
                    v165 = &v164;
                    v166 = 0x2020000000;
                    v62 = getAVChannelLayoutKeySymbolLoc_ptr;
                    v167 = getAVChannelLayoutKeySymbolLoc_ptr;
                    if (!getAVChannelLayoutKeySymbolLoc_ptr)
                    {
                      v150 = MEMORY[0x277D85DD0];
                      v151 = 3221225472;
                      v152 = __getAVChannelLayoutKeySymbolLoc_block_invoke;
                      v153 = &unk_27834A178;
                      v154 = &v164;
                      v63 = AVFoundationLibrary_4644();
                      v64 = dlsym(v63, "AVChannelLayoutKey");
                      *(v154[1] + 3) = v64;
                      getAVChannelLayoutKeySymbolLoc_ptr = *(v154[1] + 3);
                      v62 = v165[3];
                    }

                    v65 = v35;
                    _Block_object_dispose(&v164, 8);
                    if (v62)
                    {
                      v170 = *v62;
                      v66 = MEMORY[0x277CBEA90];
                      v67 = v170;
                      v68 = [v66 dataWithBytesNoCopy:v65 length:32 freeWhenDone:1];
                      v28 = v123;
                      v178 = v68;
                      v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:v169 count:8];

                      v164 = 0;
                      v165 = &v164;
                      v166 = 0x2050000000;
                      v69 = getAVAssetReaderTrackOutputClass_softClass;
                      v167 = getAVAssetReaderTrackOutputClass_softClass;
                      if (!getAVAssetReaderTrackOutputClass_softClass)
                      {
                        v150 = MEMORY[0x277D85DD0];
                        v151 = 3221225472;
                        v152 = __getAVAssetReaderTrackOutputClass_block_invoke;
                        v153 = &unk_27834A178;
                        v154 = &v164;
                        __getAVAssetReaderTrackOutputClass_block_invoke(&v150);
                        v69 = v165[3];
                      }

                      v70 = v69;
                      _Block_object_dispose(&v164, 8);
                      v126 = [v69 assetReaderTrackOutputWithTrack:v133 outputSettings:v124];
                      if (([v130 canAddOutput:v126] & 1) == 0)
                      {
                        (v132)[2](v132, 0, v131);
LABEL_72:

                        goto LABEL_73;
                      }

                      [v130 addOutput:v126];
                      v129 = [MEMORY[0x277D79F68] typeWithUTType:v128];
                      v71 = [WFFileRepresentation proposedFilenameForFile:v123 ofType:v129];
                      v122 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v71];

                      v164 = 0;
                      v165 = &v164;
                      v166 = 0x2050000000;
                      v72 = getAVAssetWriterClass_softClass_4656;
                      v167 = getAVAssetWriterClass_softClass_4656;
                      if (!getAVAssetWriterClass_softClass_4656)
                      {
                        v150 = MEMORY[0x277D85DD0];
                        v151 = 3221225472;
                        v152 = __getAVAssetWriterClass_block_invoke_4657;
                        v153 = &unk_27834A178;
                        v154 = &v164;
                        __getAVAssetWriterClass_block_invoke_4657(&v150);
                        v72 = v165[3];
                      }

                      v73 = v72;
                      _Block_object_dispose(&v164, 8);
                      v164 = 0;
                      v165 = &v164;
                      v166 = 0x2020000000;
                      v74 = getAVFileTypeAIFFSymbolLoc_ptr;
                      v167 = getAVFileTypeAIFFSymbolLoc_ptr;
                      if (!getAVFileTypeAIFFSymbolLoc_ptr)
                      {
                        v150 = MEMORY[0x277D85DD0];
                        v151 = 3221225472;
                        v152 = __getAVFileTypeAIFFSymbolLoc_block_invoke;
                        v153 = &unk_27834A178;
                        v154 = &v164;
                        v75 = AVFoundationLibrary_4644();
                        v76 = dlsym(v75, "AVFileTypeAIFF");
                        *(v154[1] + 3) = v76;
                        getAVFileTypeAIFFSymbolLoc_ptr = *(v154[1] + 3);
                        v74 = v165[3];
                      }

                      _Block_object_dispose(&v164, 8);
                      if (v74)
                      {
                        v77 = *v74;
                        v162 = v131;
                        v78 = v77;
                        [v72 assetWriterWithURL:v122 fileType:v78 error:&v162];
                        v79 = v28 = v123;
                        v80 = v162;

                        [v79 setMetadata:v127];
                        v164 = 0;
                        v165 = &v164;
                        v166 = 0x2050000000;
                        v81 = getAVAssetWriterInputClass_softClass_4659;
                        v167 = getAVAssetWriterInputClass_softClass_4659;
                        if (!getAVAssetWriterInputClass_softClass_4659)
                        {
                          v150 = MEMORY[0x277D85DD0];
                          v151 = 3221225472;
                          v152 = __getAVAssetWriterInputClass_block_invoke_4660;
                          v153 = &unk_27834A178;
                          v154 = &v164;
                          __getAVAssetWriterInputClass_block_invoke_4660(&v150);
                          v81 = v165[3];
                        }

                        v82 = v81;
                        _Block_object_dispose(&v164, 8);
                        v83 = getAVMediaTypeAudio();
                        v84 = [v81 assetWriterInputWithMediaType:v83 outputSettings:v124];

                        [v84 setExpectsMediaDataInRealTime:0];
                        if ([v79 canAddInput:v84] & 1) != 0 && (objc_msgSend(v79, "addInput:", v84), (objc_msgSend(v79, "startWriting")) && (objc_msgSend(v130, "startReading"))
                        {
                          soft_CMTimeMake_4661(&v150, [v133 naturalTimeScale]);
                          [v79 startSessionAtSourceTime:&v150];
                          v85 = dispatch_get_global_queue(0, 0);
                          v150 = MEMORY[0x277D85DD0];
                          v151 = 3221225472;
                          v152 = __WFEncodeAssetToAIFF_block_invoke;
                          v153 = &unk_278345930;
                          v86 = v84;
                          v154 = v86;
                          v155 = v126;
                          v156 = v79;
                          v161 = v132;
                          v157 = v122;
                          v158 = v129;
                          v159 = v130;
                          v160 = v80;
                          [v86 requestMediaDataWhenReadyOnQueue:v85 usingBlock:&v150];
                        }

                        else
                        {
                          (v132)[2](v132, 0, v80);
                        }

                        v131 = v80;
                        goto LABEL_72;
                      }

                      v118 = [MEMORY[0x277CCA890] currentHandler];
                      v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVFileType getAVFileTypeAIFF(void)"];
                      [v118 handleFailureInFunction:v119 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:30 description:{@"%s", dlerror()}];
                    }

                    else
                    {
                      v116 = [MEMORY[0x277CCA890] currentHandler];
                      v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVChannelLayoutKey(void)"];
                      [v116 handleFailureInFunction:v117 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:33 description:{@"%s", dlerror(), v42, v120, v121}];
                    }
                  }

                  else
                  {
                    v114 = [MEMORY[0x277CCA890] currentHandler];
                    v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVNumberOfChannelsKey(void)"];
                    [v114 handleFailureInFunction:v115 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:32 description:{@"%s", dlerror()}];
                  }
                }

                else
                {
                  v112 = [MEMORY[0x277CCA890] currentHandler];
                  v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVSampleRateKey(void)"];
                  [v112 handleFailureInFunction:v113 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:31 description:{@"%s", dlerror()}];
                }
              }

              else
              {
                v110 = [MEMORY[0x277CCA890] currentHandler];
                v111 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsBigEndianKey(void)"];
                [v110 handleFailureInFunction:v111 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:29 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v108 = [MEMORY[0x277CCA890] currentHandler];
              v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsNonInterleaved(void)"];
              [v108 handleFailureInFunction:v109 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:28 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            v106 = [MEMORY[0x277CCA890] currentHandler];
            v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMBitDepthKey(void)"];
            [v106 handleFailureInFunction:v107 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:27 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          v104 = [MEMORY[0x277CCA890] currentHandler];
          v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsFloatKey(void)"];
          [v104 handleFailureInFunction:v105 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:26 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v102 = [MEMORY[0x277CCA890] currentHandler];
        v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVFormatIDKey(void)"];
        [v102 handleFailureInFunction:v103 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:25 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }

    v87 = [(WFAVAssetContentItem *)self generateExportSessionForType:v14];
    [v87 setOutputURL:v138];
    if (v140)
    {
      [v87 setMetadata:?];
    }

    v88 = MEMORY[0x277D79F68];
    v89 = [v87 supportedFileTypes];
    v90 = [v88 typesFromStrings:v89];
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = __76__WFAVAssetContentItem_generateFileRepresentation_forType_metadata_options___block_invoke;
    v147[3] = &unk_278346AF0;
    v91 = v14;
    v148 = v91;
    v92 = [v90 indexesOfObjectsPassingTest:v147];
    v93 = [v92 count] == 0;

    if (v93)
    {
      v95 = [objc_opt_class() badCoercionErrorForType:v137];
      (v139)[2](v139, 0, v95);
    }

    else
    {
      v94 = [v91 string];
      [v87 setOutputFileType:v94];

      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __76__WFAVAssetContentItem_generateFileRepresentation_forType_metadata_options___block_invoke_2;
      v141[3] = &unk_278346B18;
      v142 = v87;
      v146 = v139;
      v143 = v138;
      v144 = v137;
      v145 = self;
      [v142 exportAsynchronouslyWithCompletionHandler:v141];

      v95 = v142;
    }
  }

LABEL_74:
}

void __76__WFAVAssetContentItem_generateFileRepresentation_forType_metadata_options___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) status] == 3)
  {
    v2 = [WFFileRepresentation fileWithURL:*(a1 + 40) options:1 ofType:*(a1 + 48)];
    v3 = *(a1 + 56);
    v9[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v3 setFileRepresentations:v4 forType:*(a1 + 48)];

    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v2, v6);
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, 0);
  }
}

- (id)metadataItemForCommonKey:(id)a3
{
  v4 = a3;
  v5 = [(WFAVAssetContentItem *)self asset];
  v6 = [v5 commonMetadata];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"commonKey = %@", v4];

  v8 = [v6 filteredArrayUsingPredicate:v7];
  v9 = [v8 firstObject];

  return v9;
}

- (id)generateExportSessionForType:(id)a3
{
  v4 = a3;
  v5 = [(WFAVAssetContentItem *)self asset];
  getAVURLAssetClass_9810();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(WFAVAssetContentItem *)self asset];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277D79F68];
  v8 = [v6 URL];
  v9 = [v8 pathExtension];
  v10 = [v7 typeFromFileExtension:v9];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v11 = getAVAssetExportPresetPassthroughSymbolLoc_ptr;
  v37 = getAVAssetExportPresetPassthroughSymbolLoc_ptr;
  if (!getAVAssetExportPresetPassthroughSymbolLoc_ptr)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getAVAssetExportPresetPassthroughSymbolLoc_block_invoke;
    v32 = &unk_27834A178;
    v33 = &v34;
    v12 = AVFoundationLibrary_9786();
    v35[3] = dlsym(v12, "AVAssetExportPresetPassthrough");
    getAVAssetExportPresetPassthroughSymbolLoc_ptr = *(v33[1] + 24);
    v11 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v11)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVAssetExportPresetPassthrough(void)"];
    [v27 handleFailureInFunction:v28 file:@"WFAVAssetContentItem.m" lineNumber:48 description:{@"%s", dlerror(), v29, v30, v31, v32}];
    goto LABEL_28;
  }

  v13 = *v11;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v14 = getAVFileTypeAppleM4ASymbolLoc_ptr;
  v37 = getAVFileTypeAppleM4ASymbolLoc_ptr;
  if (!getAVFileTypeAppleM4ASymbolLoc_ptr)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getAVFileTypeAppleM4ASymbolLoc_block_invoke;
    v32 = &unk_27834A178;
    v33 = &v34;
    v15 = AVFoundationLibrary_9786();
    v35[3] = dlsym(v15, "AVFileTypeAppleM4A");
    getAVFileTypeAppleM4ASymbolLoc_ptr = *(v33[1] + 24);
    v14 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v14)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVFileType getAVFileTypeAppleM4A(void)"];
    [v27 handleFailureInFunction:v28 file:@"WFAVAssetContentItem.m" lineNumber:49 description:{@"%s", dlerror(), v29, v30, v31, v32}];
    goto LABEL_28;
  }

  v16 = *v14;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v17 = v10;
  }

  if ([v17 isEqualToString:v16])
  {

LABEL_16:
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v19 = getAVAssetExportPresetAppleM4ASymbolLoc_ptr;
    v37 = getAVAssetExportPresetAppleM4ASymbolLoc_ptr;
    if (!getAVAssetExportPresetAppleM4ASymbolLoc_ptr)
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __getAVAssetExportPresetAppleM4ASymbolLoc_block_invoke;
      v32 = &unk_27834A178;
      v33 = &v34;
      v20 = AVFoundationLibrary_9786();
      v35[3] = dlsym(v20, "AVAssetExportPresetAppleM4A");
      getAVAssetExportPresetAppleM4ASymbolLoc_ptr = *(v33[1] + 24);
      v19 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v19)
    {
      v21 = *v19;

      v13 = v21;
      goto LABEL_20;
    }

    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVAssetExportPresetAppleM4A(void)"];
    [v27 handleFailureInFunction:v28 file:@"WFAVAssetContentItem.m" lineNumber:50 description:{@"%s", dlerror(), v29, v30, v31, v32}];
LABEL_28:

    __break(1u);
    return result;
  }

  v18 = [v10 conformsToUTType:*MEMORY[0x277CE1DE0]];

  if (v18)
  {
    goto LABEL_16;
  }

LABEL_20:
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v22 = getAVAssetExportSessionClass_softClass;
  v37 = getAVAssetExportSessionClass_softClass;
  if (!getAVAssetExportSessionClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getAVAssetExportSessionClass_block_invoke;
    v32 = &unk_27834A178;
    v33 = &v34;
    __getAVAssetExportSessionClass_block_invoke(&v29);
    v22 = v35[3];
  }

  v23 = v22;
  _Block_object_dispose(&v34, 8);
  v24 = [(WFAVAssetContentItem *)self asset];
  v25 = [v22 exportSessionWithAsset:v24 presetName:v13];

  return v25;
}

- (AVAsset)asset
{
  v3 = [WFObjectType typeWithClass:getAVAssetClass()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

- (WFFileType)preferredFileType
{
  v3 = [(WFContentItem *)self internalRepresentationType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(WFContentItem *)self internalRepresentationType];
  }

  else
  {
    v6 = [(WFContentItem *)self internalRepresentation];
    v7 = [v6 wfType];
    v8 = [v7 conformsToClass:getAVURLAssetClass_9810()];

    if (v8)
    {
      v9 = [(WFAVAssetContentItem *)self asset];
      v10 = [v9 URL];
      v11 = [v10 wfFileType];

      if (v11)
      {
        if ([v11 conformsToUTType:*MEMORY[0x277CE1DE0]])
        {
          v12 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A418]];
        }

        else
        {
          v12 = v11;
        }
      }

      else
      {
        v16.receiver = self;
        v16.super_class = WFAVAssetContentItem;
        v12 = [(WFContentItem *)&v16 preferredFileType];
      }

      v13 = v12;

      goto LABEL_12;
    }

    v15.receiver = self;
    v15.super_class = WFAVAssetContentItem;
    v5 = [(WFContentItem *)&v15 preferredFileType];
  }

  v13 = v5;
LABEL_12:

  return v13;
}

- (CLLocation)location
{
  AVMetadataItemClass = getAVMetadataItemClass();
  v4 = [(WFAVAssetContentItem *)self asset];
  v5 = [v4 metadata];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v6 = getAVMetadataCommonKeyLocationSymbolLoc_ptr;
  v33 = getAVMetadataCommonKeyLocationSymbolLoc_ptr;
  if (!getAVMetadataCommonKeyLocationSymbolLoc_ptr)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getAVMetadataCommonKeyLocationSymbolLoc_block_invoke;
    v28 = &unk_27834A178;
    v29 = &v30;
    v7 = AVFoundationLibrary_9786();
    v31[3] = dlsym(v7, "AVMetadataCommonKeyLocation");
    getAVMetadataCommonKeyLocationSymbolLoc_ptr = *(v29[1] + 24);
    v6 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (v6)
  {
    v8 = *v6;
    v9 = getAVMetadataKeySpaceCommon();
    v10 = [AVMetadataItemClass metadataItemsFromArray:v5 withKey:v8 keySpace:v9];

    v11 = [v10 firstObject];

    if (v11)
    {
      v12 = [v11 stringValue];
      if ([v12 length] >= 0x11)
      {
        v14 = [v12 substringToIndex:8];
        v15 = [v12 substringWithRange:{8, 9}];
        v30 = 0;
        v31 = &v30;
        v32 = 0x2050000000;
        v16 = getCLLocationClass_softClass_9839;
        v33 = getCLLocationClass_softClass_9839;
        if (!getCLLocationClass_softClass_9839)
        {
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __getCLLocationClass_block_invoke_9840;
          v28 = &unk_27834A178;
          v29 = &v30;
          __getCLLocationClass_block_invoke_9840(&v25);
          v16 = v31[3];
        }

        v17 = v16;
        _Block_object_dispose(&v30, 8);
        v18 = [v16 alloc];
        [v14 doubleValue];
        v20 = v19;
        [v15 doubleValue];
        v13 = [v18 initWithLatitude:v20 longitude:v21];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyLocation(void)"];
    [v23 handleFailureInFunction:v24 file:@"WFAVAssetContentItem.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)duration
{
  v2 = [(WFAVAssetContentItem *)self asset];
  v3 = v2;
  if (v2)
  {
    [v2 duration];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = getCMTimeGetSecondsSymbolLoc_ptr_9848;
  v27 = getCMTimeGetSecondsSymbolLoc_ptr_9848;
  if (!getCMTimeGetSecondsSymbolLoc_ptr_9848)
  {
    *&v20 = MEMORY[0x277D85DD0];
    *(&v20 + 1) = 3221225472;
    v21 = __getCMTimeGetSecondsSymbolLoc_block_invoke_9849;
    v22 = &unk_27834A178;
    v23 = &v24;
    v5 = CoreMediaLibrary_9850();
    v25[3] = dlsym(v5, "CMTimeGetSeconds");
    getCMTimeGetSecondsSymbolLoc_ptr_9848 = *(v23[1] + 24);
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v4)
  {
    v20 = v18;
    v21 = v19;
    v6 = v4(&v20);

    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v7 dateByAddingTimeInterval:v6];
    v10 = 224;
    v11 = [v8 components:224 fromDate:v7 toDate:v9 options:0];

    if ([v11 hour])
    {
      v12 = 1;
    }

    else
    {
      v13 = [v11 minute];
      if (v13)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x10000;
      }

      if (v13)
      {
        v10 = 224;
      }

      else
      {
        v10 = 192;
      }
    }

    v14 = [[WFTimeInterval alloc] initWithTimeInterval:v10 allowedUnits:0 unitsStyle:v12 zeroFormattingBehavior:v6];

    return v14;
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Float64 soft_CMTimeGetSeconds(CMTime)"];
    [v16 handleFailureInFunction:v17 file:@"WFAVAssetContentItem.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (void)getPreferredFileSize:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v24.receiver = self;
    v24.super_class = WFAVAssetContentItem;
    [(WFContentItem *)&v24 getPreferredFileSize:v4];
LABEL_13:

    return;
  }

  v7 = [(WFAVAssetContentItem *)self generateExportSessionForType:0];
  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x2020000000;
  v8 = getkCMTimeZeroSymbolLoc_ptr_9861;
  v27 = getkCMTimeZeroSymbolLoc_ptr_9861;
  if (!getkCMTimeZeroSymbolLoc_ptr_9861)
  {
    *&v16 = MEMORY[0x277D85DD0];
    *(&v16 + 1) = 3221225472;
    *&v17 = __getkCMTimeZeroSymbolLoc_block_invoke_9862;
    *(&v17 + 1) = &unk_27834A178;
    *&v18 = &v25;
    v9 = CoreMediaLibrary_9850();
    *(*(&v25 + 1) + 24) = dlsym(v9, "kCMTimeZero");
    getkCMTimeZeroSymbolLoc_ptr_9861 = *(*(v18 + 8) + 24);
    v8 = *(*(&v25 + 1) + 24);
  }

  _Block_object_dispose(&v25, 8);
  if (v8)
  {
    v21 = *v8;
    v22 = *(v8 + 16);
    v10 = [v7 asset];
    v11 = v10;
    if (v10)
    {
      [v10 duration];
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    *&v25 = 0;
    *(&v25 + 1) = &v25;
    v26 = 0x2020000000;
    v12 = getCMTimeRangeMakeSymbolLoc_ptr;
    v27 = getCMTimeRangeMakeSymbolLoc_ptr;
    if (!getCMTimeRangeMakeSymbolLoc_ptr)
    {
      *&v16 = MEMORY[0x277D85DD0];
      *(&v16 + 1) = 3221225472;
      *&v17 = __getCMTimeRangeMakeSymbolLoc_block_invoke;
      *(&v17 + 1) = &unk_27834A178;
      *&v18 = &v25;
      v13 = CoreMediaLibrary_9850();
      *(*(&v25 + 1) + 24) = dlsym(v13, "CMTimeRangeMake");
      getCMTimeRangeMakeSymbolLoc_ptr = *(*(v18 + 8) + 24);
      v12 = *(*(&v25 + 1) + 24);
    }

    _Block_object_dispose(&v25, 8);
    if (v12)
    {
      v16 = v21;
      *&v17 = v22;
      v25 = v19;
      v26 = v20;
      v12(v23, &v16, &v25);
      v16 = v23[0];
      v17 = v23[1];
      v18 = v23[2];
      [v7 setTimeRange:&v16];

      (*(v4 + 2))(v4, [v7 estimatedOutputFileLength]);
      goto LABEL_13;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTimeRange soft_CMTimeRangeMake(CMTime, CMTime)"}];
    [v14 handleFailureInFunction:v15 file:@"WFAVAssetContentItem.m" lineNumber:26 description:{@"%s", dlerror()}];
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMTime getkCMTimeZero(void)"];
    [v14 handleFailureInFunction:v15 file:@"WFAVAssetContentItem.m" lineNumber:24 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

- (id)frameRate
{
  v2 = [(WFAVAssetContentItem *)self asset];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = getAVMediaTypeVideoSymbolLoc_ptr_9866;
  v17 = getAVMediaTypeVideoSymbolLoc_ptr_9866;
  if (!getAVMediaTypeVideoSymbolLoc_ptr_9866)
  {
    v4 = AVFoundationLibrary_9786();
    v15[3] = dlsym(v4, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr_9866 = v15[3];
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v3)
  {
    v5 = [v2 tracksWithMediaType:*v3];
    v6 = [v5 firstObject];
    [v6 nominalFrameRate];
    v8 = v7;

    LODWORD(v9) = v8;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];

    return v10;
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeVideo(void)"];
    [v12 handleFailureInFunction:v13 file:@"WFAVAssetContentItem.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Media (plural)", @"Media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Media (singular)", @"Media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Media";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClassName:@"AVMutableMovie" frameworkName:@"AVFoundation" location:0];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"AVAsset" frameworkName:@"AVFoundation" location:0];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D08]];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "isEqualToUTType:", *MEMORY[0x277CE1D08]) & 1) != 0 || (objc_msgSend(v4, "isEqualToUTType:", *MEMORY[0x277CE1D00]) & 1) != 0 || (objc_msgSend(v4, "isEqualToUTType:", *MEMORY[0x277CE1EC0]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFAVAssetContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v40[6] = *MEMORY[0x277D85DE8];
  v35 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v34 = [WFContentPropertyBuilder keyPath:@"duration" name:v35 class:objc_opt_class()];
  v33 = [v34 timeUnits:224];
  v40[0] = v33;
  v32 = WFLocalizedContentPropertyNameMarker(@"Frame Rate");
  v31 = [WFContentPropertyBuilder keyPath:@"frameRate" name:v32 class:objc_opt_class()];
  v30 = [v31 irrational:1];
  v40[1] = v30;
  v29 = WFLocalizedContentPropertyNameMarker(@"Title");
  v28 = [WFContentPropertyBuilder block:&__block_literal_global_9915 name:v29 class:objc_opt_class()];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v2 = getAVMetadataCommonKeyTitleSymbolLoc_ptr;
  v39 = getAVMetadataCommonKeyTitleSymbolLoc_ptr;
  if (!getAVMetadataCommonKeyTitleSymbolLoc_ptr)
  {
    v3 = AVFoundationLibrary_9786();
    v37[3] = dlsym(v3, "AVMetadataCommonKeyTitle");
    getAVMetadataCommonKeyTitleSymbolLoc_ptr = v37[3];
    v2 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v2)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyTitle(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFAVAssetContentItem.m" lineNumber:43 description:{@"%s", dlerror()}];

    goto LABEL_16;
  }

  v24 = *v2;
  v27 = [v28 userInfo:?];
  v40[2] = v27;
  v26 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v25 = [WFContentPropertyBuilder block:&__block_literal_global_9915 name:v26 class:objc_opt_class()];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v4 = getAVMetadataCommonKeyArtistSymbolLoc_ptr;
  v39 = getAVMetadataCommonKeyArtistSymbolLoc_ptr;
  if (!getAVMetadataCommonKeyArtistSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary_9786();
    v37[3] = dlsym(v5, "AVMetadataCommonKeyArtist");
    getAVMetadataCommonKeyArtistSymbolLoc_ptr = v37[3];
    v4 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v4)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyArtist(void)"];
    [v20 handleFailureInFunction:v21 file:@"WFAVAssetContentItem.m" lineNumber:44 description:{@"%s", dlerror()}];

    goto LABEL_16;
  }

  v6 = *v4;
  v7 = [v25 userInfo:v6];
  v40[3] = v7;
  v8 = WFLocalizedContentPropertyNameMarker(@"Album");
  v9 = [WFContentPropertyBuilder block:&__block_literal_global_9915 name:v8 class:objc_opt_class()];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v10 = getAVMetadataCommonKeyAlbumNameSymbolLoc_ptr;
  v39 = getAVMetadataCommonKeyAlbumNameSymbolLoc_ptr;
  if (!getAVMetadataCommonKeyAlbumNameSymbolLoc_ptr)
  {
    v11 = AVFoundationLibrary_9786();
    v37[3] = dlsym(v11, "AVMetadataCommonKeyAlbumName");
    getAVMetadataCommonKeyAlbumNameSymbolLoc_ptr = v37[3];
    v10 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v10)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyAlbumName(void)"];
    [v22 handleFailureInFunction:v23 file:@"WFAVAssetContentItem.m" lineNumber:45 description:{@"%s", dlerror()}];

LABEL_16:
    __break(1u);
  }

  v12 = *v10;
  v13 = [v9 userInfo:v12];
  v40[4] = v13;
  v14 = WFLocalizedContentPropertyNameMarker(@"Artwork");
  v15 = [WFContentPropertyBuilder block:&__block_literal_global_29 name:v14 class:objc_opt_class()];
  v40[5] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:6];

  return v16;
}

void __40__WFAVAssetContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = [v5 asset];
  v14[0] = @"commonMetadata";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WFAVAssetContentItem_propertyBuilders__block_invoke_4;
  v11[3] = &unk_278347B38;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v7 loadValuesAsynchronouslyForKeys:v8 completionHandler:v11];
}

void __40__WFAVAssetContentItem_propertyBuilders__block_invoke_4(uint64_t a1)
{
  AVMetadataItemClass = getAVMetadataItemClass();
  v3 = [*(a1 + 32) asset];
  v4 = [v3 commonMetadata];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getAVMetadataCommonKeyArtworkSymbolLoc_ptr;
  v20 = getAVMetadataCommonKeyArtworkSymbolLoc_ptr;
  if (!getAVMetadataCommonKeyArtworkSymbolLoc_ptr)
  {
    v6 = AVFoundationLibrary_9786();
    v18[3] = dlsym(v6, "AVMetadataCommonKeyArtwork");
    getAVMetadataCommonKeyArtworkSymbolLoc_ptr = v18[3];
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    v7 = *v5;
    v8 = getAVMetadataKeySpaceCommon();
    v9 = [AVMetadataItemClass metadataItemsFromArray:v4 withKey:v7 keySpace:v8];

    v10 = [v9 firstObject];

    v11 = *(a1 + 40);
    v12 = MEMORY[0x277D79FC8];
    v13 = [v10 value];
    v14 = [v12 imageWithData:v13];
    (*(v11 + 16))(v11, v14);
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyArtwork(void)"];
    [v15 handleFailureInFunction:v16 file:@"WFAVAssetContentItem.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void __40__WFAVAssetContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v6 asset];
  v18[0] = @"commonMetadata";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__WFAVAssetContentItem_propertyBuilders__block_invoke_2;
  v14[3] = &unk_278349EF0;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  [v9 loadValuesAsynchronouslyForKeys:v10 completionHandler:v14];
}

void __40__WFAVAssetContentItem_propertyBuilders__block_invoke_2(uint64_t a1)
{
  AVMetadataItemClass = getAVMetadataItemClass();
  v3 = [*(a1 + 32) asset];
  v4 = [v3 commonMetadata];
  v5 = *(a1 + 40);
  v6 = getAVMetadataKeySpaceCommon();
  v7 = [AVMetadataItemClass metadataItemsFromArray:v4 withKey:v5 keySpace:v6];
  v10 = [v7 firstObject];

  v8 = *(a1 + 48);
  v9 = [v10 value];
  (*(v8 + 16))(v8, v9);
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFAVAssetContentItem *)self asset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getCMTimeGetSecondsSymbolLoc_ptr_15163;
  v22 = getCMTimeGetSecondsSymbolLoc_ptr_15163;
  if (!getCMTimeGetSecondsSymbolLoc_ptr_15163)
  {
    *&v15 = MEMORY[0x277D85DD0];
    *(&v15 + 1) = 3221225472;
    v16 = __getCMTimeGetSecondsSymbolLoc_block_invoke_15164;
    v17 = &unk_27834A178;
    v18 = &v19;
    __getCMTimeGetSecondsSymbolLoc_block_invoke_15164(&v15);
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v7)
  {
    v15 = v13;
    v16 = v14;
    v8 = v7(&v15);
    v9 = WFChooseFromListFormatPlaybackDuration(v8);

    if (v4)
    {
      v4[2](v4, v9);
    }

    return 1;
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Float64 soft_CMTimeGetSeconds(CMTime)"];
    [v11 handleFailureInFunction:v12 file:@"WFContentItem+ChooseFromList.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v5 = getAVMetadataItemClass_softClass_15171;
  v31 = getAVMetadataItemClass_softClass_15171;
  if (!getAVMetadataItemClass_softClass_15171)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAVMetadataItemClass_block_invoke_15172;
    v26 = &unk_27834A178;
    v27 = &v28;
    __getAVMetadataItemClass_block_invoke_15172(&v23);
    v5 = v29[3];
  }

  v6 = v5;
  _Block_object_dispose(&v28, 8);
  v7 = [(WFAVAssetContentItem *)self asset];
  v8 = [v7 commonMetadata];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v9 = getAVMetadataCommonKeyArtistSymbolLoc_ptr_15173;
  v31 = getAVMetadataCommonKeyArtistSymbolLoc_ptr_15173;
  if (!getAVMetadataCommonKeyArtistSymbolLoc_ptr_15173)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAVMetadataCommonKeyArtistSymbolLoc_block_invoke_15174;
    v26 = &unk_27834A178;
    v27 = &v28;
    v10 = AVFoundationLibrary_15175();
    v11 = dlsym(v10, "AVMetadataCommonKeyArtist");
    *(v27[1] + 24) = v11;
    getAVMetadataCommonKeyArtistSymbolLoc_ptr_15173 = *(v27[1] + 24);
    v9 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v9)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyArtist(void)"];
    [v21 handleFailureInFunction:v22 file:@"WFContentItem+ChooseFromList.m" lineNumber:36 description:{@"%s", dlerror()}];
LABEL_18:

    __break(1u);
    return result;
  }

  v12 = *v9;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v13 = getAVMetadataKeySpaceCommonSymbolLoc_ptr_15178;
  v31 = getAVMetadataKeySpaceCommonSymbolLoc_ptr_15178;
  if (!getAVMetadataKeySpaceCommonSymbolLoc_ptr_15178)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAVMetadataKeySpaceCommonSymbolLoc_block_invoke_15179;
    v26 = &unk_27834A178;
    v27 = &v28;
    v14 = AVFoundationLibrary_15175();
    v15 = dlsym(v14, "AVMetadataKeySpaceCommon");
    *(v27[1] + 24) = v15;
    getAVMetadataKeySpaceCommonSymbolLoc_ptr_15178 = *(v27[1] + 24);
    v13 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v13)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKeySpace getAVMetadataKeySpaceCommon(void)"];
    [v21 handleFailureInFunction:v22 file:@"WFContentItem+ChooseFromList.m" lineNumber:35 description:{@"%s", dlerror()}];
    goto LABEL_18;
  }

  v16 = [v5 metadataItemsFromArray:v8 withKey:v12 keySpace:*v13];
  v17 = [v16 firstObject];
  v18 = [v17 value];

  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v4)
    {
      v4[2](v4, v18);
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end