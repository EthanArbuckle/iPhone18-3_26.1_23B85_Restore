@interface MSAttachmentItem
- (MSAttachmentItem)initWithCoder:(id)a3;
- (MSAttachmentItem)initWithContentID:(id)a3 uttype:(id)a4 data:(id)a5 additionalMarkup:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSAttachmentItem

- (MSAttachmentItem)initWithContentID:(id)a3 uttype:(id)a4 data:(id)a5 additionalMarkup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = MSAttachmentItem;
  v14 = [(MSAttachmentItem *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;

    objc_storeStrong(&v14->_uttype, a4);
    v17 = [v12 copy];
    data = v14->_data;
    v14->_data = v17;

    v19 = [v13 copy];
    additionalMarkup = v14->_additionalMarkup;
    v14->_additionalMarkup = v19;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MSAttachmentItem *)self contentID];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_contentID"];

  v5 = [(MSAttachmentItem *)self uttype];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_uttype"];

  v6 = [(MSAttachmentItem *)self data];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_data"];

  v7 = [(MSAttachmentItem *)self additionalMarkup];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_additionalMarkup"];
}

- (MSAttachmentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MSAttachmentItem;
  v5 = [(MSAttachmentItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_uttype"];
    uttype = v5->_uttype;
    v5->_uttype = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_additionalMarkup"];
    additionalMarkup = v5->_additionalMarkup;
    v5->_additionalMarkup = v12;
  }

  return v5;
}

@end