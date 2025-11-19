@interface IMDCoreSpotlightMessageTapbackIndexer
+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)a3;
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightMessageTapbackIndexer

+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)a3
{
  result = 1;
  if (a3 <= 2005)
  {
    if (a3 > 2000)
    {
      if (a3 == 2005)
      {
        v4 = 6;
      }

      else
      {
        v4 = 1;
      }

      if (a3 == 2004)
      {
        v5 = 4;
      }

      else
      {
        v5 = v4;
      }

      if (a3 == 2003)
      {
        v6 = 5;
      }

      else
      {
        v6 = v5;
      }

      if (a3 == 2002)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      if (a3 == 2001)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      if (a3 <= 2002)
      {
        return v8;
      }

      else
      {
        return v6;
      }
    }

    else if (a3 <= 3 && a3 != 1 || (a3 - 1000) < 2)
    {
      return 0;
    }
  }

  else
  {
    if (a3 > 2999)
    {
      if ((a3 - 3000) >= 8 && a3 != 4000)
      {
        return result;
      }

      return 0;
    }

    if (a3 == 2007)
    {
      v9 = 9;
    }

    else
    {
      v9 = 1;
    }

    if (a3 == 2006)
    {
      return 7;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v35 = a3;
  v9 = a6;
  v11 = objc_msgSend_objectForKey_(v35, v10, @"associatedMessageType");
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_integerValue(v11, v12, v13);
    if (v15)
    {
      v17 = v15;
      v18 = objc_msgSend__searchableAttributeFromAssociatedMessageType_(a1, v16, v15);
      v20 = objc_msgSend_objectForKey_(v35, v19, @"associatedMessageGUID");
      v22 = objc_msgSend_objectForKey_(v35, v21, @"attributedBody");
      v25 = objc_msgSend_string(v22, v23, v24);

      v26 = _IMDCoreSpotlightStrippedBody(v35, @"plainBody", v25);
      objc_msgSend_setTextContent_(v9, v27, v26);
      objc_msgSend_setMessageTapbackType_(v9, v28, v18);
      objc_msgSend_setTapbackAssociatedMessageID_(v9, v29, v20);
      objc_msgSend_setMessageType_(v9, v30, @"tpbck");
      objc_msgSend_setDisableSearchInSpotlight_(v9, v31, MEMORY[0x1E695E118]);
      if (v17 == 2006)
      {
        v33 = objc_msgSend_objectForKey_(v35, v32, @"associatedMessageEmoji");
        objc_msgSend_setMessageTapbackStringValue_(v9, v34, v33);
      }
    }
  }
}

@end