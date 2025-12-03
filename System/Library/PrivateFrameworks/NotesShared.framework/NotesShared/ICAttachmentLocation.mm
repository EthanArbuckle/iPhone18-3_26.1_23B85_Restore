@interface ICAttachmentLocation
+ (id)newAttachmentLocationForAttachment:(id)attachment;
- (NSString)formattedAddressWithoutAttachmentTitle;
@end

@implementation ICAttachmentLocation

- (NSString)formattedAddressWithoutAttachmentTitle
{
  formattedAddress = [(ICLocation *)self formattedAddress];
  attachment = [(ICAttachmentLocation *)self attachment];
  title = [attachment title];
  if (title)
  {
    v6 = title;
    attachment2 = [(ICAttachmentLocation *)self attachment];
    title2 = [attachment2 title];
    v9 = [formattedAddress hasPrefix:title2];

    if (!v9)
    {
      goto LABEL_5;
    }

    attachment = [(ICAttachmentLocation *)self attachment];
    title3 = [attachment title];
    v11 = [formattedAddress substringFromIndex:{objc_msgSend(title3, "length")}];

    formattedAddress = v11;
  }

LABEL_5:
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [formattedAddress stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v13;
}

+ (id)newAttachmentLocationForAttachment:(id)attachment
{
  v3 = MEMORY[0x277CBE408];
  attachmentCopy = attachment;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v6 = [v3 insertNewObjectForEntityForName:@"ICAttachmentLocation" inManagedObjectContext:managedObjectContext];

  [v6 setAttachment:attachmentCopy];
  return v6;
}

@end