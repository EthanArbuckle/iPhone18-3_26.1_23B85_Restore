@interface OCNonModularSPI_CMPhoto_InPlaceEditor
- (BOOL)shouldModifyMetadataForImageIndex:(int64_t)a3 payloadIndex:(int64_t)a4 withType:(unint64_t)a5 customMetadataIdentifier:(id)a6;
- (int)extrinsics:(id)a3 forIndex:(int64_t)a4 modifiedExtrinsics:(id *)a5;
- (int)metadataPayload:(id)a3 forImageIndex:(int64_t)a4 payloadIndex:(int64_t)a5 withType:(unint64_t)a6 customMetadataIdentifier:(id)a7 modifiedData:(id *)a8;
- (void)updateModifiedExtrinsicsPosition:(id)a3 rotation:(id)a4;
@end

@implementation OCNonModularSPI_CMPhoto_InPlaceEditor

- (int)extrinsics:(id)a3 forIndex:(int64_t)a4 modifiedExtrinsics:(id *)a5
{
  v7 = objc_msgSend_mutableCopy(a3, a2, a3, a4);
  v10 = objc_msgSend_modifiedExtrinsicsPosition(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v11, v10, *MEMORY[0x277CF6C80]);

  v14 = objc_msgSend_modifiedExtrinsicsRotation(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v15, v14, *MEMORY[0x277CF6C88]);

  v16 = v7;
  *a5 = v7;

  return 0;
}

- (int)metadataPayload:(id)a3 forImageIndex:(int64_t)a4 payloadIndex:(int64_t)a5 withType:(unint64_t)a6 customMetadataIdentifier:(id)a7 modifiedData:(id *)a8
{
  v12 = a3;
  v13 = a7;
  v16 = v13;
  if (a6 == 3)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x277CF6D88]);
    isEqualToString = objc_msgSend_isEqualToString_(v18, v19, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");

    if (isEqualToString)
    {
      v23 = objc_msgSend_modifiedCustom(self, v21, v22);
      *a8 = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x277CF6D78]);

      v17 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v17 = -17102;
    goto LABEL_7;
  }

  if (a6 != 1)
  {
    goto LABEL_6;
  }

  objc_msgSend_modifiedXMP(self, v14, v15);
  *a8 = v17 = 0;
LABEL_7:

  return v17;
}

- (BOOL)shouldModifyMetadataForImageIndex:(int64_t)a3 payloadIndex:(int64_t)a4 withType:(unint64_t)a5 customMetadataIdentifier:(id)a6
{
  result = 1;
  if (a5 != 1 && a5 != 4)
  {
    if (a5 == 3)
    {
      v7 = objc_msgSend_objectForKeyedSubscript_(a6, a2, *MEMORY[0x277CF6D88], a4);
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

- (void)updateModifiedExtrinsicsPosition:(id)a3 rotation:(id)a4
{
  v8 = a4;
  objc_msgSend_setModifiedExtrinsicsPosition_(self, v6, a3);
  objc_msgSend_setModifiedExtrinsicsRotation_(self, v7, v8);
}

@end