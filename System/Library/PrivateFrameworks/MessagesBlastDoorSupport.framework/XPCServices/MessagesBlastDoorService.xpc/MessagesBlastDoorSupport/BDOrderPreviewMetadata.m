@interface BDOrderPreviewMetadata
- (BDOrderPreviewMetadata)initWithOrderData:(id)a3 workingDirectory:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation BDOrderPreviewMetadata

- (BDOrderPreviewMetadata)initWithOrderData:(id)a3 workingDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v13 = [[v11 alloc] initWithOrderData:v8 workingDirectory:v9 error:a5];
  v14 = v13;
  if (v13)
  {
    v15 = [(BDOrderPreviewMetadata *)v13 headerImage];

    if (v15)
    {
      v16 = [BDOrderPreviewMetadataImage alloc];
      v17 = [(BDOrderPreviewMetadata *)v14 headerImage];
      v18 = [(BDOrderPreviewMetadataImage *)v16 _initWithImage:v17];
      headerImage = v10->_headerImage;
      v10->_headerImage = v18;
    }

    v10->_backgroundColor = CGColorRetain([(BDOrderPreviewMetadata *)v14 backgroundColor]);
    v20 = [BDOrderPreviewMetadataText alloc];
    v21 = [(BDOrderPreviewMetadata *)v14 primaryText];
    v22 = [(BDOrderPreviewMetadataText *)v20 _initWithText:v21];
    primaryText = v10->_primaryText;
    v10->_primaryText = v22;

    v24 = [(BDOrderPreviewMetadata *)v14 secondaryText];

    if (v24)
    {
      v25 = [BDOrderPreviewMetadataText alloc];
      v26 = [(BDOrderPreviewMetadata *)v14 secondaryText];
      v27 = [(BDOrderPreviewMetadataText *)v25 _initWithText:v26];
      secondaryText = v10->_secondaryText;
      v10->_secondaryText = v27;
    }

    v29 = [(BDOrderPreviewMetadata *)v14 tertiaryText];

    if (v29)
    {
      v30 = [BDOrderPreviewMetadataText alloc];
      v31 = [(BDOrderPreviewMetadata *)v14 tertiaryText];
      v32 = [(BDOrderPreviewMetadataText *)v30 _initWithText:v31];
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