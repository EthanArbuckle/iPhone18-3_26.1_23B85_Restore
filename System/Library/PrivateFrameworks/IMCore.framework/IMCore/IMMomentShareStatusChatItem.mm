@interface IMMomentShareStatusChatItem
+ (id)_guidForItem:(id)a3;
- (BOOL)_isEqualToGuid:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (BOOL)wouldBeEqualIfInitializedWithItem:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5;
- (id)_initWithItem:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMMomentShareStatusChatItem

+ (id)_guidForItem:(id)a3
{
  v3 = objc_msgSend_guid(a3, a2, a3);
  v4 = sub_1A83AC604();

  return v4;
}

- (id)_initWithItem:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = IMMomentShareStatusChatItem;
  v11 = [(IMChatItem *)&v25 _initWithItem:v8];
  if (v11)
  {
    v12 = objc_opt_class();
    v14 = objc_msgSend__guidForItem_(v12, v13, v8);
    objc_msgSend__setGUID_(v11, v15, v14);
    v18 = objc_msgSend_copy(v9, v16, v17);
    v19 = v11[7];
    v11[7] = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    v23 = v11[8];
    v11[8] = v22;
  }

  return v11;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_guid(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  v10 = objc_msgSend_hash(self->_activityTitle, v8, v9) ^ v7;
  return v10 ^ objc_msgSend_hash(self->_expirationDate, v11, v12);
}

- (BOOL)_isEqualToGuid:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_guid(self, v11, v12);
  v14 = v8;
  v16 = v14;
  if (v13 == v14)
  {

    goto LABEL_7;
  }

  if (!v14 || !v13)
  {

    LOBYTE(v18) = 0;
    v19 = v13;
    goto LABEL_19;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v13, v15, v14);

  if (isEqualToString)
  {
LABEL_7:
    v19 = self->_activityTitle;
    v20 = v9;
    v13 = v20;
    if (v19 == v20)
    {

LABEL_14:
      v19 = self->_expirationDate;
      v22 = v10;
      v13 = v22;
      if (v19 == v22)
      {
        LOBYTE(v18) = 1;
      }

      else
      {
        LOBYTE(v18) = 0;
        if (v22 && v19)
        {
          LOBYTE(v18) = objc_msgSend_isEqualToDate_(v19, v23, v22);
        }
      }

      goto LABEL_19;
    }

    LOBYTE(v18) = 0;
    if (v20 && v19)
    {
      v18 = objc_msgSend_isEqualToString_(v19, v21, v20);

      if (!v18)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v18) = 0;
LABEL_20:

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMMomentShareStatusChatItem;
  if ([(IMTranscriptChatItem *)&v17 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_guid(v4, v5, v6);
    v10 = objc_msgSend_activityTitle(v4, v8, v9);
    v13 = objc_msgSend_expirationDate(v4, v11, v12);
    isEqualToGuid_activityTitle_expirationDate = objc_msgSend__isEqualToGuid_activityTitle_expirationDate_(self, v14, v7, v10, v13);
  }

  else
  {
    isEqualToGuid_activityTitle_expirationDate = 0;
  }

  return isEqualToGuid_activityTitle_expirationDate;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMMomentShareStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v9 description];
  activityTitle = self->_activityTitle;
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"[[%@] activityTitle: %@, expirationDate: %@]", v4, activityTitle, self->_expirationDate);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_activityTitle_expirationDate_(v4, v8, v7, self->_activityTitle, self->_expirationDate);

  return v9;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (BOOL)wouldBeEqualIfInitializedWithItem:(id)a3 activityTitle:(id)a4 expirationDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v13 = objc_msgSend__guidForItem_(v11, v12, v10);

  LOBYTE(v10) = objc_msgSend__isEqualToGuid_activityTitle_expirationDate_(self, v14, v13, v9, v8);
  return v10;
}

@end