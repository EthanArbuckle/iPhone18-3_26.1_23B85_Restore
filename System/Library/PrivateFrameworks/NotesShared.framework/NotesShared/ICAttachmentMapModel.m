@interface ICAttachmentMapModel
- (id)MKMapItem;
- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4;
- (void)MKMapItem;
- (void)addLocation;
@end

@implementation ICAttachmentMapModel

- (id)MKMapItem
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:@"map_item_data"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v12];
    v7 = v12;
    if (v7)
    {
      v9 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v7 dataPersister:v9 withIdentifierMap:?];
      }
    }

    gotLoadHelper_x8__OBJC_CLASS___MKMapItem(v8);
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addLocation
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [ICAttachmentLocation newAttachmentLocationForAttachment:v3];
  v5 = [(ICAttachmentModel *)self attachment];
  [v5 setLocation:v4];

  v11 = [(ICAttachmentMapModel *)self MKMapItem];
  v6 = [v11 placemark];

  v7 = [(ICAttachmentModel *)self attachment];
  v8 = [v7 location];
  if (v6)
  {
    v9 = [v11 placemark];
    [v8 setLocationFromPlacemark:v9];
  }

  else
  {
    v9 = [(ICAttachmentModel *)self attachment];
    v10 = [v9 URL];
    [v8 setLocationFromURL:v10];
  }
}

- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4
{
  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 urlString];

  *a3 = @"a";
  v8 = v7;
  *a4 = v7;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"href=%@", v7];

  return v9;
}

- (void)MKMapItem
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  v2 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&dword_214D51000, v2, OS_LOG_TYPE_ERROR, "Exception decoding map item: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

@end