@interface ML3StoreItemArtistData
- (ML3StoreItemArtistData)initWithTrackImportItem:(id)item;
- (NSDictionary)parsedStoreArtistItemImportProperties;
@end

@implementation ML3StoreItemArtistData

- (NSDictionary)parsedStoreArtistItemImportProperties
{
  parsedStoreArtistImportProperties = self->_parsedStoreArtistImportProperties;
  if (!parsedStoreArtistImportProperties)
  {
    if (self->_trackItemImportProperties)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v5 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9140];
      if (objc_opt_respondsToSelector())
      {
        v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
        [dictionary setObject:v6 forKeyedSubscript:&unk_2840C9140];
      }

      v7 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9158];
      if (objc_opt_respondsToSelector())
      {
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "longLongValue")}];
        [dictionary setObject:v8 forKeyedSubscript:&unk_2840C9158];
      }

      v9 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9170];
      if (objc_opt_respondsToSelector())
      {
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
        [dictionary setObject:v10 forKeyedSubscript:&unk_2840C9188];
      }

      v11 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C91A0];
      if (_NSIsNSString())
      {
        [dictionary setObject:v11 forKeyedSubscript:&unk_2840C91B8];
      }

      v30 = v11;
      v12 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C91D0];
      if (_NSIsNSString())
      {
        [dictionary setObject:v12 forKeyedSubscript:&unk_2840C91E8];
      }

      v29 = v12;
      v13 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9200];
      if (objc_opt_respondsToSelector())
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "longLongValue")}];
        [dictionary setObject:v14 forKeyedSubscript:&unk_2840C9200];
      }

      v15 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9218];
      if (objc_opt_respondsToSelector())
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "longLongValue")}];
        [dictionary setObject:v16 forKeyedSubscript:&unk_2840C9218];
      }

      v32 = v5;
      v17 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9230];
      if (_NSIsNSString())
      {
        [dictionary setObject:v17 forKeyedSubscript:&unk_2840C9248];
      }

      v31 = v7;
      v18 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9260];
      if (_NSIsNSString())
      {
        [dictionary setObject:v18 forKeyedSubscript:&unk_2840C9278];
      }

      v28 = v13;
      v19 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9290];
      if (_NSIsNSString())
      {
        [dictionary setObject:v19 forKeyedSubscript:&unk_2840C92A8];
      }

      v20 = v9;
      v21 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C92C0];
      if (_NSIsNSString())
      {
        [dictionary setObject:v21 forKeyedSubscript:&unk_2840C92D8];
      }

      v22 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C92F0];
      if (objc_opt_respondsToSelector())
      {
        v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "longLongValue")}];
        [dictionary setObject:v23 forKeyedSubscript:&unk_2840C9308];
      }

      v24 = [dictionary copy];
      v25 = self->_parsedStoreArtistImportProperties;
      self->_parsedStoreArtistImportProperties = v24;

      parsedStoreArtistImportProperties = self->_parsedStoreArtistImportProperties;
    }

    else
    {
      parsedStoreArtistImportProperties = 0;
    }
  }

  v26 = [(NSDictionary *)parsedStoreArtistImportProperties copy];

  return v26;
}

- (ML3StoreItemArtistData)initWithTrackImportItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ML3StoreItemArtistData;
  v5 = [(ML3StoreItemArtistData *)&v9 init];
  if (v5)
  {
    v6 = [itemCopy copy];
    trackItemImportProperties = v5->_trackItemImportProperties;
    v5->_trackItemImportProperties = v6;
  }

  return v5;
}

@end