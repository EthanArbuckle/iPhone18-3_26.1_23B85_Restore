@interface FBKSAnnotatedContentObjc
- (FBKSAnnotatedContentObjc)initWithPayload:(id)a3 displayName:(id)a4 description:(id)a5 fileName:(id)a6 iconType:(id)a7 additionalInfo:(id)a8;
@end

@implementation FBKSAnnotatedContentObjc

- (FBKSAnnotatedContentObjc)initWithPayload:(id)a3 displayName:(id)a4 description:(id)a5 fileName:(id)a6 iconType:(id)a7 additionalInfo:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = FBKSAnnotatedContentObjc;
  v20 = [(FBKSAnnotatedContentObjc *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    payload = v20->_payload;
    v20->_payload = v21;

    v23 = [v15 copy];
    displayName = v20->_displayName;
    v20->_displayName = v23;

    v25 = [v16 copy];
    description = v20->__description;
    v20->__description = v25;

    v27 = [v18 copy];
    iconType = v20->_iconType;
    v20->_iconType = v27;

    v29 = [v17 copy];
    fileName = v20->_fileName;
    v20->_fileName = v29;

    v31 = [v19 copy];
    additionalInfo = v20->_additionalInfo;
    v20->_additionalInfo = v31;
  }

  return v20;
}

@end