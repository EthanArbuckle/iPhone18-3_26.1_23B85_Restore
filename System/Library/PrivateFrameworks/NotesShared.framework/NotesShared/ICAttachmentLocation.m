@interface ICAttachmentLocation
+ (id)newAttachmentLocationForAttachment:(id)a3;
- (NSString)formattedAddressWithoutAttachmentTitle;
@end

@implementation ICAttachmentLocation

- (NSString)formattedAddressWithoutAttachmentTitle
{
  v3 = [(ICLocation *)self formattedAddress];
  v4 = [(ICAttachmentLocation *)self attachment];
  v5 = [v4 title];
  if (v5)
  {
    v6 = v5;
    v7 = [(ICAttachmentLocation *)self attachment];
    v8 = [v7 title];
    v9 = [v3 hasPrefix:v8];

    if (!v9)
    {
      goto LABEL_5;
    }

    v4 = [(ICAttachmentLocation *)self attachment];
    v10 = [v4 title];
    v11 = [v3 substringFromIndex:{objc_msgSend(v10, "length")}];

    v3 = v11;
  }

LABEL_5:
  v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [v3 stringByTrimmingCharactersInSet:v12];

  return v13;
}

+ (id)newAttachmentLocationForAttachment:(id)a3
{
  v3 = MEMORY[0x277CBE408];
  v4 = a3;
  v5 = [v4 managedObjectContext];
  v6 = [v3 insertNewObjectForEntityForName:@"ICAttachmentLocation" inManagedObjectContext:v5];

  [v6 setAttachment:v4];
  return v6;
}

@end