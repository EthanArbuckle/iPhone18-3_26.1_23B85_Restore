@interface NMSMusicRecommendation
+ (id)_missingArtImage;
+ (void)_fillArtworkMutableArray:(id)array toCount:(unint64_t)count;
- (BOOL)isEqual:(id)equal;
- (MPArtworkCatalog)artworkCatalog;
- (NMSMusicRecommendation)initWithIdentifier:(id)identifier title:(id)title items:(id)items;
- (NSDate)lastModifiedDate;
- (id)_tiledArtworkRequestWithPersistentIDs:(id)ds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NMSMusicRecommendation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  identifier = self->_identifier;
  if (self->_selected)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p identifier: %@, selected: %@>", v5, self, self->_identifier, v8];

  return v9;
}

- (NMSMusicRecommendation)initWithIdentifier:(id)identifier title:(id)title items:(id)items
{
  identifierCopy = identifier;
  titleCopy = title;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = NMSMusicRecommendation;
  v12 = [(NMSMusicRecommendation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_items, items);
    v13->_selected = 1;
    v14 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendation", 0);
    serializerQueue = v13->_serializerQueue;
    v13->_serializerQueue = v14;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (equalCopy == self)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      if ([(NSString *)self->_identifier isEqual:v5->_identifier])
      {
        v6 = [(NSOrderedSet *)self->_items valueForKey:@"identifiers"];
        v7 = [(NSOrderedSet *)v5->_items valueForKey:@"identifiers"];
        v8 = (v6 == v7 || [v6 isEqual:v7]) && self->_selected == v5->_selected;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)lastModifiedDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  serializerQueue = self->_serializerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSMusicRecommendation_lastModifiedDate__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serializerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__NMSMusicRecommendation_lastModifiedDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if ([v2 isEqualToString:NMSRecommendationLibraryPinsIdentifier])
  {
    goto LABEL_4;
  }

  v3 = [*(a1 + 32) identifier];
  if ([v3 isEqualToString:NMSRecommendationRecentMusicIdentifier])
  {
    goto LABEL_3;
  }

  v6 = [*(*(a1 + 32) + 8) count];

  if (v6 == 1)
  {
    v2 = [*(*(a1 + 32) + 8) firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_4;
    }

    v3 = v2;
    v7 = [v3 lastModifiedDateComponents];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEA80]);
      v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v10 = [v3 lastModifiedDateComponents];
      v11 = [v9 dateFromComponents:v10];
      v12 = *(a1 + 32);
      v13 = *(v12 + 32);
      *(v12 + 32) = v11;
    }

    else
    {
      v9 = NMLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __42__NMSMusicRecommendation_lastModifiedDate__block_invoke_cold_1(v3, v9);
      }
    }

LABEL_3:
LABEL_4:
  }

  v4 = *(*(a1 + 32) + 32);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, v4);
}

- (MPArtworkCatalog)artworkCatalog
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  serializerQueue = self->_serializerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NMSMusicRecommendation_artworkCatalog__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serializerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    v3 = [*(v2 + 8) count];
    v4 = *(*(v1 + 32) + 8);
    if (v3 == 1)
    {
      v5 = [v4 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [v6 artworkCatalog];
        v8 = v7;
        if (!v7)
        {
          v8 = [v6 tracksTiledArtworkCatalogWithRows:2 columns:2];
        }

        objc_storeStrong((*(v1 + 32) + 40), v8);
        if (!v7)
        {
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        v26 = [v5 artworkCatalog];
        v27 = *(v1 + 32);
        v6 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    if ([v4 count] >= 2)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v1;
      v9 = *(*(v1 + 32) + 8);
      v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v32;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }
              }
            }

            v15 = MEMORY[0x277CCABB0];
            v16 = [v14 identifiers];
            v17 = [v16 library];
            v18 = [v15 numberWithLongLong:{objc_msgSend(v17, "persistentID")}];
            [v5 addObject:v18];
          }

          v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v11);
      }

      v1 = v29;
      v19 = *(v29 + 32);
      v20 = [v5 copy];
      v6 = [v19 _tiledArtworkRequestWithPersistentIDs:v20];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2;
      v30[3] = &unk_27993ED08;
      v30[4] = *(v29 + 32);
      [v6 setArtworkCatalogsBlock:v30];
      v21 = objc_alloc(MEMORY[0x277CD5D50]);
      v22 = [MEMORY[0x277CD60E0] sharedDataSource];
      v23 = [v21 initWithToken:v6 dataSource:v22];
      v24 = *(v29 + 32);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      goto LABEL_27;
    }
  }

LABEL_29:
  objc_storeStrong((*(*(v1 + 40) + 8) + 40), *(*(v1 + 32) + 40));
  v28 = *MEMORY[0x277D85DE8];
}

id __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2(uint64_t a1, unint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v27 = a1;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if (!v11)
          {
            v17 = NMLogForCategory(5);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_8();
            }

            goto LABEL_39;
          }

          v12 = v11;
          v13 = [v11 artworkCatalog];

          if (!v13)
          {
            v17 = NMLogForCategory(5);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_7(v35, v12);
            }

            goto LABEL_39;
          }

          v14 = [v12 artworkCatalog];
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v10;
          if (!v15)
          {
            v17 = NMLogForCategory(5);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_6();
            }

            goto LABEL_39;
          }

          v16 = v15;
          v14 = [v15 artworkCatalog];
          if (!v14)
          {
            v14 = [v16 tracksTiledArtworkCatalogWithRows:2 columns:2];
            if (!v14)
            {
              v17 = NMLogForCategory(5);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_5(v34, v16);
              }

              goto LABEL_39;
            }
          }

LABEL_14:
          v17 = v14;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v10;
          if (!v18)
          {
            v17 = NMLogForCategory(5);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_4();
            }

            goto LABEL_39;
          }

          v19 = v18;
          v17 = [v18 artworkCatalog];
          if (!v17)
          {
            v20 = NMLogForCategory(5);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_3(v33, v19);
            }

LABEL_28:

            a1 = v27;
            goto LABEL_39;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_40;
          }

          v21 = v10;
          if (!v21)
          {
            v17 = NMLogForCategory(5);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_2();
            }

            goto LABEL_39;
          }

          v22 = v21;
          v17 = [v21 artworkCatalog];
          if (!v17)
          {
            v20 = NMLogForCategory(5);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_1(v32, v22);
            }

            goto LABEL_28;
          }
        }

LABEL_15:
        [v4 addObject:v17];
LABEL_39:

LABEL_40:
        if ([v4 count] >= a2)
        {
          goto LABEL_43;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

LABEL_43:

  v23 = *(a1 + 32);
  [objc_opt_class() _fillArtworkMutableArray:v4 toCount:a2];
  v24 = [v4 copy];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_tiledArtworkRequestWithPersistentIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x277CD60E8]);
  [v5 setNumberOfRows:2];
  [v5 setNumberOfColumns:2];
  [v5 setTileSpacing:2.0];
  [v5 setEntityIdentifier:self->_identifier];
  [v5 setNamespaceIdentifier:@"com.apple.NanoMusic.Recommendation"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += [*(*(&v15 + 1) + 8 * i) hash];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [v5 setRevisionIdentifier:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_missingArtImage
{
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v6.width = 1.0;
  v6.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v6, 1, 0.0);
  [systemGrayColor setFill];
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  UIRectFill(v7);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v3;
}

+ (void)_fillArtworkMutableArray:(id)array toCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count] < count)
  {
    v6 = MEMORY[0x277CD5D50];
    _missingArtImage = [objc_opt_class() _missingArtImage];
    v8 = [v6 staticArtworkCatalogWithImage:_missingArtImage];

    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134218240;
      v12 = [arrayCopy count];
      v13 = 2048;
      countCopy = count;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_INFO, "Filling tiled artwork catalog %tu -> %tu", &v11, 0x16u);
    }

    while ([arrayCopy count] < count)
    {
      [arrayCopy addObject:v8];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_identifier);
    objc_storeStrong((v5 + 8), self->_items);
    *(v5 + 56) = self->_selected;
  }

  return v5;
}

void __42__NMSMusicRecommendation_lastModifiedDate__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "No lastModifiedDateComponents for playlist %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  OUTLINED_FUNCTION_3_1(v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v3, v4, "The recommended song [%{public}@] is missing its artwork catalog. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_2()
{
  v0 = [OUTLINED_FUNCTION_1_1() identifiers];
  OUTLINED_FUNCTION_3_1(v0, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v1, v2, "The recommendation [%{public}@] is a song, but the song information is missing. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  OUTLINED_FUNCTION_3_1(v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v3, v4, "The recommended artist [%{public}@] is missing its artwork catalog. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_4()
{
  v0 = [OUTLINED_FUNCTION_1_1() identifiers];
  OUTLINED_FUNCTION_3_1(v0, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v1, v2, "The recommendation [%{public}@] is an artist, but the artist information is missing. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_5(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  OUTLINED_FUNCTION_3_1(v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v3, v4, "The recommended playlist [%{public}@] is missing its artwork catalog. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_6()
{
  v0 = [OUTLINED_FUNCTION_1_1() identifiers];
  OUTLINED_FUNCTION_3_1(v0, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v1, v2, "The recommendation [%{public}@] is a playlist, but the playlist information is missing. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_7(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  OUTLINED_FUNCTION_3_1(v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v3, v4, "The recommended album [%{public}@] is missing its artwork catalog. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

void __40__NMSMusicRecommendation_artworkCatalog__block_invoke_2_cold_8()
{
  v0 = [OUTLINED_FUNCTION_1_1() identifiers];
  OUTLINED_FUNCTION_3_1(v0, 5.8381e-34);
  OUTLINED_FUNCTION_0_1(&dword_25B27B000, v1, v2, "The recommendation [%{public}@] is an album, but the album information is missing. This is likely to manifest as missing artwork in Music's settings in the Watch app.");
}

@end