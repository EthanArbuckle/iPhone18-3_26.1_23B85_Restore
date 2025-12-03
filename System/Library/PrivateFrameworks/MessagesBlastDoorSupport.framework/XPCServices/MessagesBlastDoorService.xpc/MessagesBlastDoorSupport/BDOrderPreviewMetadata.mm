@interface BDOrderPreviewMetadata
- (BDOrderPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error;
- (void)dealloc;
@end

@implementation BDOrderPreviewMetadata

- (BDOrderPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error
{
  dataCopy = data;
  directoryCopy = directory;
  v35.receiver = self;
  v35.super_class = BDOrderPreviewMetadata;
  v10 = [(BDOrderPreviewMetadata *)&v35 init];
  if (!v10)
  {
LABEL_12:
    v14 = v10;
    goto LABEL_13;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v11 = qword_1000FE0F0;
  v40 = qword_1000FE0F0;
  if (!qword_1000FE0F0)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000AA28;
    v36[3] = &unk_1000F0B70;
    v36[4] = &v37;
    sub_10000AA28(v36);
    v11 = v38[3];
  }

  v12 = v11;
  _Block_object_dispose(&v37, 8);
  v13 = [[v11 alloc] initWithOrderData:dataCopy workingDirectory:directoryCopy error:error];
  v14 = v13;
  if (v13)
  {
    headerImage = [(BDOrderPreviewMetadata *)v13 headerImage];

    if (headerImage)
    {
      v16 = [BDOrderPreviewMetadataImage alloc];
      headerImage2 = [(BDOrderPreviewMetadata *)v14 headerImage];
      v18 = [(BDOrderPreviewMetadataImage *)v16 _initWithImage:headerImage2];
      headerImage = v10->_headerImage;
      v10->_headerImage = v18;
    }

    v10->_backgroundColor = CGColorRetain([(BDOrderPreviewMetadata *)v14 backgroundColor]);
    v20 = [BDOrderPreviewMetadataText alloc];
    primaryText = [(BDOrderPreviewMetadata *)v14 primaryText];
    v22 = [(BDOrderPreviewMetadataText *)v20 _initWithText:primaryText];
    primaryText = v10->_primaryText;
    v10->_primaryText = v22;

    secondaryText = [(BDOrderPreviewMetadata *)v14 secondaryText];

    if (secondaryText)
    {
      v25 = [BDOrderPreviewMetadataText alloc];
      secondaryText2 = [(BDOrderPreviewMetadata *)v14 secondaryText];
      v27 = [(BDOrderPreviewMetadataText *)v25 _initWithText:secondaryText2];
      secondaryText = v10->_secondaryText;
      v10->_secondaryText = v27;
    }

    tertiaryText = [(BDOrderPreviewMetadata *)v14 tertiaryText];

    if (tertiaryText)
    {
      v30 = [BDOrderPreviewMetadataText alloc];
      tertiaryText2 = [(BDOrderPreviewMetadata *)v14 tertiaryText];
      v32 = [(BDOrderPreviewMetadataText *)v30 _initWithText:tertiaryText2];
      tertiaryText = v10->_tertiaryText;
      v10->_tertiaryText = v32;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  v3.receiver = self;
  v3.super_class = BDOrderPreviewMetadata;
  [(BDOrderPreviewMetadata *)&v3 dealloc];
}

@end