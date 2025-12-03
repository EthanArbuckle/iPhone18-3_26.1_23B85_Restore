@interface FBKSAnnotatedContentObjc
- (FBKSAnnotatedContentObjc)initWithPayload:(id)payload displayName:(id)name description:(id)description fileName:(id)fileName iconType:(id)type additionalInfo:(id)info;
@end

@implementation FBKSAnnotatedContentObjc

- (FBKSAnnotatedContentObjc)initWithPayload:(id)payload displayName:(id)name description:(id)description fileName:(id)fileName iconType:(id)type additionalInfo:(id)info
{
  payloadCopy = payload;
  nameCopy = name;
  descriptionCopy = description;
  fileNameCopy = fileName;
  typeCopy = type;
  infoCopy = info;
  v34.receiver = self;
  v34.super_class = FBKSAnnotatedContentObjc;
  v20 = [(FBKSAnnotatedContentObjc *)&v34 init];
  if (v20)
  {
    v21 = [payloadCopy copy];
    payload = v20->_payload;
    v20->_payload = v21;

    v23 = [nameCopy copy];
    displayName = v20->_displayName;
    v20->_displayName = v23;

    v25 = [descriptionCopy copy];
    description = v20->__description;
    v20->__description = v25;

    v27 = [typeCopy copy];
    iconType = v20->_iconType;
    v20->_iconType = v27;

    v29 = [fileNameCopy copy];
    fileName = v20->_fileName;
    v20->_fileName = v29;

    v31 = [infoCopy copy];
    additionalInfo = v20->_additionalInfo;
    v20->_additionalInfo = v31;
  }

  return v20;
}

@end