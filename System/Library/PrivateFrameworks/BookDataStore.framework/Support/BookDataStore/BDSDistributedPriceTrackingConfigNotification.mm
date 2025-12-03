@interface BDSDistributedPriceTrackingConfigNotification
- (BDSDistributedPriceTrackingConfigNotification)initWithCoder:(id)coder;
- (BDSDistributedPriceTrackingConfigNotification)initWithTitleSingleAudiobook:(id)audiobook titleSingleBook:(id)book titleMultiple:(id)multiple bodySingleAudiobook:(id)singleAudiobook bodySingleBook:(id)singleBook bodyMultiple:(id)bodyMultiple;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSDistributedPriceTrackingConfigNotification

- (BDSDistributedPriceTrackingConfigNotification)initWithTitleSingleAudiobook:(id)audiobook titleSingleBook:(id)book titleMultiple:(id)multiple bodySingleAudiobook:(id)singleAudiobook bodySingleBook:(id)singleBook bodyMultiple:(id)bodyMultiple
{
  audiobookCopy = audiobook;
  bookCopy = book;
  multipleCopy = multiple;
  singleAudiobookCopy = singleAudiobook;
  singleBookCopy = singleBook;
  bodyMultipleCopy = bodyMultiple;
  v40.receiver = self;
  v40.super_class = BDSDistributedPriceTrackingConfigNotification;
  v20 = [(BDSDistributedPriceTrackingConfigNotification *)&v40 init];
  if (v20)
  {
    v21 = [audiobookCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_titleSingleAudiobook, v23);

    v24 = [bookCopy copy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_titleSingleBook, v26);

    v27 = [multipleCopy copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_titleMultiple, v29);

    v30 = [singleAudiobookCopy copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_bodySingleAudiobook, v32);

    v33 = [singleBookCopy copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_bodySingleBook, v35);

    v36 = [bodyMultipleCopy copy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = &stru_10024C800;
    }

    objc_storeStrong(&v20->_bodyMultiple, v38);
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleSingleAudiobook = [(BDSDistributedPriceTrackingConfigNotification *)self titleSingleAudiobook];
  [coderCopy encodeObject:titleSingleAudiobook forKey:@"titleSingleAudiobook"];

  titleSingleBook = [(BDSDistributedPriceTrackingConfigNotification *)self titleSingleBook];
  [coderCopy encodeObject:titleSingleBook forKey:@"titleSingleBook"];

  titleMultiple = [(BDSDistributedPriceTrackingConfigNotification *)self titleMultiple];
  [coderCopy encodeObject:titleMultiple forKey:@"titleMultiple"];

  bodySingleAudiobook = [(BDSDistributedPriceTrackingConfigNotification *)self bodySingleAudiobook];
  [coderCopy encodeObject:bodySingleAudiobook forKey:@"bodySingleAudiobook"];

  bodySingleBook = [(BDSDistributedPriceTrackingConfigNotification *)self bodySingleBook];
  [coderCopy encodeObject:bodySingleBook forKey:@"bodySingleBook"];

  bodyMultiple = [(BDSDistributedPriceTrackingConfigNotification *)self bodyMultiple];
  [coderCopy encodeObject:bodyMultiple forKey:@"bodyMultiple"];
}

- (BDSDistributedPriceTrackingConfigNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleSingleAudiobook"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleSingleBook"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleMultiple"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodySingleAudiobook"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodySingleBook"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyMultiple"];

  v11 = [(BDSDistributedPriceTrackingConfigNotification *)self initWithTitleSingleAudiobook:v5 titleSingleBook:v6 titleMultiple:v7 bodySingleAudiobook:v8 bodySingleBook:v9 bodyMultiple:v10];
  return v11;
}

@end