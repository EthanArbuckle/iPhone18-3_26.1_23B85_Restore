@interface MSAttachmentItem
- (MSAttachmentItem)initWithCoder:(id)coder;
- (MSAttachmentItem)initWithContentID:(id)d uttype:(id)uttype data:(id)data additionalMarkup:(id)markup;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSAttachmentItem

- (MSAttachmentItem)initWithContentID:(id)d uttype:(id)uttype data:(id)data additionalMarkup:(id)markup
{
  dCopy = d;
  uttypeCopy = uttype;
  dataCopy = data;
  markupCopy = markup;
  v22.receiver = self;
  v22.super_class = MSAttachmentItem;
  v14 = [(MSAttachmentItem *)&v22 init];
  if (v14)
  {
    v15 = [dCopy copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;

    objc_storeStrong(&v14->_uttype, uttype);
    v17 = [dataCopy copy];
    data = v14->_data;
    v14->_data = v17;

    v19 = [markupCopy copy];
    additionalMarkup = v14->_additionalMarkup;
    v14->_additionalMarkup = v19;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentID = [(MSAttachmentItem *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"EFPropertyKey_contentID"];

  uttype = [(MSAttachmentItem *)self uttype];
  [coderCopy encodeObject:uttype forKey:@"EFPropertyKey_uttype"];

  data = [(MSAttachmentItem *)self data];
  [coderCopy encodeObject:data forKey:@"EFPropertyKey_data"];

  additionalMarkup = [(MSAttachmentItem *)self additionalMarkup];
  [coderCopy encodeObject:additionalMarkup forKey:@"EFPropertyKey_additionalMarkup"];
}

- (MSAttachmentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MSAttachmentItem;
  v5 = [(MSAttachmentItem *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_uttype"];
    uttype = v5->_uttype;
    v5->_uttype = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_additionalMarkup"];
    additionalMarkup = v5->_additionalMarkup;
    v5->_additionalMarkup = v12;
  }

  return v5;
}

@end