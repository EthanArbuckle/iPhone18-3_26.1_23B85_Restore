@interface MSVideoDerivativeSpecification
+ (id)videoDerivativeSpecificationsWithDictionaryArray:(id)a3;
- (MSVideoDerivativeSpecification)initWithDictionary:(id)a3;
@end

@implementation MSVideoDerivativeSpecification

- (MSVideoDerivativeSpecification)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSVideoDerivativeSpecification;
  v5 = [(MSVideoDerivativeSpecification *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"cellular"];
    v5->_useCellular = [v6 BOOLValue];

    v7 = [v4 objectForKey:@"powerRequired"];
    v5->_powerRequired = [v7 BOOLValue];

    v8 = [v4 objectForKey:@"bitRate"];
    [v8 floatValue];
    v5->_bitRate = v9;

    v10 = [v4 objectForKey:@"videoType"];
    v5->_videoType = v10;
    if ([(NSString *)v10 isEqualToString:@"PosterFrame"])
    {
      v11 = 5;
    }

    else if ([(NSString *)v5->_videoType isEqualToString:@"360p"])
    {
      v11 = 6;
    }

    else
    {
      if (![(NSString *)v5->_videoType isEqualToString:@"720p"])
      {
        v5->_mediaAssetType = 0;
        goto LABEL_9;
      }

      v11 = 7;
    }

    v5->_mediaAssetType = v11;
  }

LABEL_9:

  return v5;
}

+ (id)videoDerivativeSpecificationsWithDictionaryArray:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__MSVideoDerivativeSpecification_videoDerivativeSpecificationsWithDictionaryArray___block_invoke;
  v8[3] = &unk_278E927F0;
  v6 = v5;
  v9 = v6;
  [v3 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __83__MSVideoDerivativeSpecification_videoDerivativeSpecificationsWithDictionaryArray___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[MSVideoDerivativeSpecification alloc] initWithDictionary:v4];
    [*(a1 + 32) addObject:v3];
  }
}

@end