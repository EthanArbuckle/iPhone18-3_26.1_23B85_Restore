@interface CHStrokeGroupQueryItem
+ (id)descriptionForStrokeGroupQueryItemType:(int64_t)a3;
- (id)description;
- (id)textRecognitionResultForLocale:(id)a3 error:(id *)a4;
@end

@implementation CHStrokeGroupQueryItem

+ (id)descriptionForStrokeGroupQueryItemType:(int64_t)a3
{
  v3 = &stru_1EF1C0318;
  if (a3 == 1)
  {
    v3 = @"Handwriting";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Unknown";
  }
}

- (id)textRecognitionResultForLocale:(id)a3 error:(id *)a4
{
  v10 = a3;
  if (self)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(self->__tokenizedTextResultsByLocale, v6, v10, v7, v8, v9);
    if (a4)
    {
LABEL_3:
      if (self)
      {
        errorsByLocale = self->__errorsByLocale;
      }

      else
      {
        errorsByLocale = 0;
      }

      v13 = errorsByLocale;
      v18 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v10, v15, v16, v17);
      v19 = v18;

      *a4 = v18;
    }
  }

  else
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(0, v6, v10, v7, v8, v9);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v8 = objc_msgSend_descriptionForStrokeGroupQueryItemType_(v3, v4, self->_strokeGroupType, v5, v6, v7);
  v24.receiver = self;
  v24.super_class = CHStrokeGroupQueryItem;
  v9 = [(CHStrokeGroupQueryItem *)&v24 description];
  strokeGroupIdentifier = self->_strokeGroupIdentifier;
  strokeGroupStableIdentifier = self->_strokeGroupStableIdentifier;
  v17 = objc_msgSend_count(self->_strokeIdentifiers, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringByAppendingFormat_(v9, v18, @" ID: %@, StableID: %@, Stroke count: %ld, type: %@", v19, v20, v21, strokeGroupIdentifier, strokeGroupStableIdentifier, v17, v8);

  return v22;
}

@end