@interface MAsset
- (BFMSeries)seriesResource;
- (BOOL)isAudiobook;
- (BOOL)isBook;
- (BOOL)isExplicit;
- (BOOL)isPreorder;
- (BOOL)pagesAreRTL;
- (NSArray)genres;
- (NSDate)expectedReleaseDate;
- (NSDate)releaseDate;
- (NSDecimalNumber)sequenceNumber;
- (NSDictionary)offer;
- (NSNumber)price;
- (NSString)artworkURL;
- (NSURL)bookSampleDownloadURL;
- (NSURL)previewURL;
- (NSURL)url;
- (double)averageRating;
- (int64_t)fileSize;
- (unint64_t)ratingCount;
- (unint64_t)ratingCountForAnalytics;
@end

@implementation MAsset

- (NSURL)url
{
  v3 = sub_241CF8CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC14BookFoundation6MAsset_url, v3);
  v8 = sub_241CF8C98();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (BOOL)isBook
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v4);
  return v4 == 3;
}

- (BOOL)isAudiobook
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v4);
  return v4 == 0;
}

- (BOOL)isExplicit
{
  selfCopy = self;
  contentRating = [(MAsset *)selfCopy contentRating];
  if (contentRating)
  {
    v4 = contentRating;
    v5 = sub_241CF9038();
    v7 = v6;

    if (v5 == 0x746963696C707865 && v7 == 0xE800000000000000)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_241CF98C8();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

- (NSDate)releaseDate
{
  swift_getObjectType();
  v3 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-v5];
  v16[15] = 21;
  selfCopy = self;
  v8 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v8, MEMORY[0x277D837D0], v17);

  if (v17[1])
  {
    sub_241CB00C8(1, v6);

    v9 = sub_241CF8D88();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v6, 1, v9);
    v12 = 0;
    if (v11 != 1)
    {
      v13 = sub_241CF8D38();
      (*(v10 + 8))(v6, v9);
      v12 = v13;
    }
  }

  else
  {

    v14 = sub_241CF8D88();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v12 = 0;
  }

  return v12;
}

- (NSURL)bookSampleDownloadURL
{
  v3 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  MAsset.bookSampleDownloadURL.getter(v6);

  v8 = sub_241CF8CF8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_241CF8C98();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (BOOL)pagesAreRTL
{
  selfCopy = self;
  pageProgressionDirection = [(MAsset *)selfCopy pageProgressionDirection];
  if (pageProgressionDirection)
  {
    v4 = pageProgressionDirection;
    v5 = sub_241CF9038();
    v7 = v6;

    if (v5 == 7107698 && v7 == 0xE300000000000000)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_241CF98C8();
    }
  }

  else
  {
    v9 = _s14BookFoundation23LocaleLanguageDirectionV5isRTLSbvgZ_0();
  }

  return v9 & 1;
}

- (double)averageRating
{
  selfCopy = self;
  v3 = MAsset.averageRating.getter();

  return v3;
}

- (unint64_t)ratingCount
{
  selfCopy = self;
  v3 = MAsset.ratingCount.getter();

  return v3;
}

- (unint64_t)ratingCountForAnalytics
{
  selfCopy = self;
  v3 = MAsset.ratingCountForAnalytics.getter();

  return v3;
}

- (NSDate)expectedReleaseDate
{
  v3 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  MAsset.expectedReleaseDate.getter(v6);

  v8 = sub_241CF8D88();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_241CF8D38();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (int64_t)fileSize
{
  swift_getObjectType();
  selfCopy = self;
  v4 = sub_241CB202C();
  sub_241CB48F4();
  sub_241CD7154(v4, MEMORY[0x277D84A28], &v6);

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (NSDictionary)offer
{
  selfCopy = self;
  v3 = MAsset.offer.getter();

  if (v3)
  {
    v4 = sub_241CF8EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPreorder
{
  selfCopy = self;
  v3 = MAsset.isPreorder.getter();

  return v3 & 1;
}

- (NSURL)previewURL
{
  swift_getObjectType();
  v3 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v16 - v5;
  selfCopy = self;
  v8 = MAsset.preview.getter();
  sub_241CB4948();
  sub_241CD7154(v8, MEMORY[0x277D837D0], v16);

  if (v16[1])
  {
    sub_241CF8CD8();

    v9 = sub_241CF8CF8();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v6, 1, v9);
    v12 = 0;
    if (v11 != 1)
    {
      v13 = sub_241CF8C98();
      (*(v10 + 8))(v6, v9);
      v12 = v13;
    }
  }

  else
  {

    v14 = sub_241CF8CF8();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v12 = 0;
  }

  return v12;
}

- (NSString)artworkURL
{
  swift_getObjectType();
  v3 = *(self + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);
  sub_241CB499C();
  selfCopy = self;
  sub_241CD7154(v3, MEMORY[0x277D837D0], v7);

  if (v7[1])
  {
    v5 = sub_241CF9008();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDecimalNumber)sequenceNumber
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x140);
  selfCopy = self;
  v4 = v2();
  sub_241CAF20C(1, v4);
  v6 = v5;

  if ((v6 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_241CF9568();
  }

  return v7;
}

- (NSArray)genres
{
  selfCopy = self;
  v3 = sub_241CA8170(@"genres");
  if (v3)
  {
    sub_241CB6F28(v3);

    sub_241C93918(&unk_27EC6A700, &qword_241CFC8C8);
    v4 = sub_241CF9288();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (NSNumber)price
{
  selfCopy = self;
  MAsset.price.getter();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_241CF8E48();
  }

  return v4;
}

- (BFMSeries)seriesResource
{
  selfCopy = self;
  v3 = MAsset.__seriesResource.getter();

  return v3;
}

@end