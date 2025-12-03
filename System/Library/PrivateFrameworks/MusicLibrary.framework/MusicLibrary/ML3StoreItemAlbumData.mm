@interface ML3StoreItemAlbumData
- (ML3StoreItemAlbumData)initWithTrackImportItem:(id)item;
- (id)parsedStoreAlbumImportProperties;
@end

@implementation ML3StoreItemAlbumData

- (id)parsedStoreAlbumImportProperties
{
  parsedStoreAlbumImportProperties = self->_parsedStoreAlbumImportProperties;
  if (!parsedStoreAlbumImportProperties)
  {
    if (self->_trackItemImportProperties)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v5 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8E70];
      if (objc_opt_respondsToSelector())
      {
        v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
        [dictionary setObject:v6 forKeyedSubscript:&unk_2840C8E70];
      }

      v7 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8E88];
      if (_NSIsNSString())
      {
        [dictionary setObject:v7 forKeyedSubscript:&unk_2840C8EA0];
      }

      v8 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8EB8];
      if (_NSIsNSString())
      {
        [dictionary setObject:v8 forKeyedSubscript:&unk_2840C8ED0];
      }

      v31 = v7;
      v9 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8EE8];
      if (objc_opt_respondsToSelector())
      {
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
        [dictionary setObject:v10 forKeyedSubscript:&unk_2840C8F00];
      }

      v11 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8F18];
      if (_NSIsNSString())
      {
        [dictionary setObject:v11 forKeyedSubscript:&unk_2840C8F30];
      }

      v29 = v11;
      v12 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8F48];
      if (objc_opt_respondsToSelector())
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];
        [dictionary setObject:v13 forKeyedSubscript:&unk_2840C8F60];
      }

      v32 = v5;
      v14 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8F78];
      if (objc_opt_respondsToSelector())
      {
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "longLongValue")}];
        [dictionary setObject:v15 forKeyedSubscript:&unk_2840C8F90];
      }

      v28 = v14;
      v16 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8FA8];
      if (objc_opt_respondsToSelector())
      {
        v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "longLongValue")}];
        [dictionary setObject:v17 forKeyedSubscript:&unk_2840C8FC0];
      }

      v30 = v8;
      v18 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C8FD8];
      if (_NSIsNSString())
      {
        [dictionary setObject:v18 forKeyedSubscript:&unk_2840C8FF0];
      }

      v19 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9008];
      if (objc_opt_respondsToSelector())
      {
        v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "longLongValue")}];
        [dictionary setObject:v20 forKeyedSubscript:&unk_2840C9020];
      }

      v21 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9038];
      if (_NSIsNSNumber())
      {
        [dictionary setObject:v21 forKeyedSubscript:&unk_2840C9038];
      }

      v22 = v9;
      v23 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9050];
      if (_NSIsNSString())
      {
        [dictionary setObject:v23 forKeyedSubscript:&unk_2840C9050];
      }

      v24 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9068];
      if (_NSIsNSString())
      {
        [dictionary setObject:v24 forKeyedSubscript:&unk_2840C9068];
      }

      v25 = [dictionary copy];
      v26 = self->_parsedStoreAlbumImportProperties;
      self->_parsedStoreAlbumImportProperties = v25;

      parsedStoreAlbumImportProperties = self->_parsedStoreAlbumImportProperties;
    }

    else
    {
      parsedStoreAlbumImportProperties = 0;
    }
  }

  return parsedStoreAlbumImportProperties;
}

- (ML3StoreItemAlbumData)initWithTrackImportItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ML3StoreItemAlbumData;
  v5 = [(ML3StoreItemAlbumData *)&v9 init];
  if (v5)
  {
    v6 = [itemCopy copy];
    trackItemImportProperties = v5->_trackItemImportProperties;
    v5->_trackItemImportProperties = v6;
  }

  return v5;
}

@end