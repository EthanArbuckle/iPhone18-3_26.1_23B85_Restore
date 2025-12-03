@interface OCNonModularSPI_CMPhoto_InPlaceEditor
- (BOOL)shouldModifyMetadataForImageIndex:(int64_t)index payloadIndex:(int64_t)payloadIndex withType:(unint64_t)type customMetadataIdentifier:(id)identifier;
- (int)extrinsics:(id)extrinsics forIndex:(int64_t)index modifiedExtrinsics:(id *)modifiedExtrinsics;
- (int)metadataPayload:(id)payload forImageIndex:(int64_t)index payloadIndex:(int64_t)payloadIndex withType:(unint64_t)type customMetadataIdentifier:(id)identifier modifiedData:(id *)data;
- (void)updateModifiedExtrinsicsPosition:(id)position rotation:(id)rotation;
@end

@implementation OCNonModularSPI_CMPhoto_InPlaceEditor

- (int)extrinsics:(id)extrinsics forIndex:(int64_t)index modifiedExtrinsics:(id *)modifiedExtrinsics
{
  v7 = objc_msgSend_mutableCopy(extrinsics, a2, extrinsics, index);
  v10 = objc_msgSend_modifiedExtrinsicsPosition(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v11, v10, *MEMORY[0x277CF6C80]);

  v14 = objc_msgSend_modifiedExtrinsicsRotation(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v15, v14, *MEMORY[0x277CF6C88]);

  v16 = v7;
  *modifiedExtrinsics = v7;

  return 0;
}

- (int)metadataPayload:(id)payload forImageIndex:(int64_t)index payloadIndex:(int64_t)payloadIndex withType:(unint64_t)type customMetadataIdentifier:(id)identifier modifiedData:(id *)data
{
  payloadCopy = payload;
  identifierCopy = identifier;
  v16 = identifierCopy;
  if (type == 3)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(identifierCopy, v14, *MEMORY[0x277CF6D88]);
    isEqualToString = objc_msgSend_isEqualToString_(v18, v19, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");

    if (isEqualToString)
    {
      v23 = objc_msgSend_modifiedCustom(self, v21, v22);
      *data = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x277CF6D78]);

      v17 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v17 = -17102;
    goto LABEL_7;
  }

  if (type != 1)
  {
    goto LABEL_6;
  }

  objc_msgSend_modifiedXMP(self, v14, v15);
  *data = v17 = 0;
LABEL_7:

  return v17;
}

- (BOOL)shouldModifyMetadataForImageIndex:(int64_t)index payloadIndex:(int64_t)payloadIndex withType:(unint64_t)type customMetadataIdentifier:(id)identifier
{
  result = 1;
  if (type != 1 && type != 4)
  {
    if (type == 3)
    {
      v7 = objc_msgSend_objectForKeyedSubscript_(identifier, a2, *MEMORY[0x277CF6D88], payloadIndex);
      isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");

      return isEqualToString;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)updateModifiedExtrinsicsPosition:(id)position rotation:(id)rotation
{
  rotationCopy = rotation;
  objc_msgSend_setModifiedExtrinsicsPosition_(self, v6, position);
  objc_msgSend_setModifiedExtrinsicsRotation_(self, v7, rotationCopy);
}

@end