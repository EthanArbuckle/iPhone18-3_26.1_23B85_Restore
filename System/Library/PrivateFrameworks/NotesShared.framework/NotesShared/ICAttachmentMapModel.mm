@interface ICAttachmentMapModel
- (id)MKMapItem;
- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content;
- (void)MKMapItem;
- (void)addLocation;
@end

@implementation ICAttachmentMapModel

- (id)MKMapItem
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"map_item_data"];

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
  attachment = [(ICAttachmentModel *)self attachment];
  v4 = [ICAttachmentLocation newAttachmentLocationForAttachment:attachment];
  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachment2 setLocation:v4];

  mKMapItem = [(ICAttachmentMapModel *)self MKMapItem];
  placemark = [mKMapItem placemark];

  attachment3 = [(ICAttachmentModel *)self attachment];
  location = [attachment3 location];
  if (placemark)
  {
    placemark2 = [mKMapItem placemark];
    [location setLocationFromPlacemark:placemark2];
  }

  else
  {
    placemark2 = [(ICAttachmentModel *)self attachment];
    v10 = [placemark2 URL];
    [location setLocationFromURL:v10];
  }
}

- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content
{
  attachment = [(ICAttachmentModel *)self attachment];
  urlString = [attachment urlString];

  *name = @"a";
  v8 = urlString;
  *content = urlString;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"href=%@", urlString];

  return v9;
}

- (void)MKMapItem
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(self);
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