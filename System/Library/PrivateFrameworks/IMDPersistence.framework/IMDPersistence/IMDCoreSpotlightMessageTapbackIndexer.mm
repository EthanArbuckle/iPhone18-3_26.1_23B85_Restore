@interface IMDCoreSpotlightMessageTapbackIndexer
+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)type;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageTapbackIndexer

+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)type
{
  result = 1;
  if (type <= 2005)
  {
    if (type > 2000)
    {
      if (type == 2005)
      {
        v4 = 6;
      }

      else
      {
        v4 = 1;
      }

      if (type == 2004)
      {
        v5 = 4;
      }

      else
      {
        v5 = v4;
      }

      if (type == 2003)
      {
        v6 = 5;
      }

      else
      {
        v6 = v5;
      }

      if (type == 2002)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      if (type == 2001)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      if (type <= 2002)
      {
        return v8;
      }

      else
      {
        return v6;
      }
    }

    else if (type <= 3 && type != 1 || (type - 1000) < 2)
    {
      return 0;
    }
  }

  else
  {
    if (type > 2999)
    {
      if ((type - 3000) >= 8 && type != 4000)
      {
        return result;
      }

      return 0;
    }

    if (type == 2007)
    {
      v9 = 9;
    }

    else
    {
      v9 = 1;
    }

    if (type == 2006)
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

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  itemCopy = item;
  updateCopy = update;
  v11 = objc_msgSend_objectForKey_(itemCopy, v10, @"associatedMessageType");
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_integerValue(v11, v12, v13);
    if (v15)
    {
      v17 = v15;
      v18 = objc_msgSend__searchableAttributeFromAssociatedMessageType_(self, v16, v15);
      v20 = objc_msgSend_objectForKey_(itemCopy, v19, @"associatedMessageGUID");
      v22 = objc_msgSend_objectForKey_(itemCopy, v21, @"attributedBody");
      v25 = objc_msgSend_string(v22, v23, v24);

      v26 = _IMDCoreSpotlightStrippedBody(itemCopy, @"plainBody", v25);
      objc_msgSend_setTextContent_(updateCopy, v27, v26);
      objc_msgSend_setMessageTapbackType_(updateCopy, v28, v18);
      objc_msgSend_setTapbackAssociatedMessageID_(updateCopy, v29, v20);
      objc_msgSend_setMessageType_(updateCopy, v30, @"tpbck");
      objc_msgSend_setDisableSearchInSpotlight_(updateCopy, v31, MEMORY[0x1E695E118]);
      if (v17 == 2006)
      {
        v33 = objc_msgSend_objectForKey_(itemCopy, v32, @"associatedMessageEmoji");
        objc_msgSend_setMessageTapbackStringValue_(updateCopy, v34, v33);
      }
    }
  }
}

@end