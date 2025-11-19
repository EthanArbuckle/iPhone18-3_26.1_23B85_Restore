@interface CKSwipeToReplyRules
+ (id)balloonCellFromGestureRecognizer:(id)a3 inTranscriptCollectionView:(id)a4;
@end

@implementation CKSwipeToReplyRules

+ (id)balloonCellFromGestureRecognizer:(id)a3 inTranscriptCollectionView:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (CKIsRunningInMessagesNotificationExtension() || ([v6 _ck_isEditing] & 1) != 0 || (objc_msgSend(v6, "isDecelerating") & 1) != 0)
  {
    goto LABEL_7;
  }

  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;
  [v5 velocityInView:v6];
  v13 = atan(v12 / v11) * 180.0 / 3.14159265;
  if (v13 < 0.0)
  {
    v13 = -v13;
  }

  if (v13 > 18.0)
  {
LABEL_7:
    v14 = 0;
  }

  else
  {
    v16 = [v6 indexPathForItemAtPoint:0 inSection:{v8, v10}];
    if (v16)
    {
      v17 = [v6 delegate];
      if ([v17 collectionView:v6 shouldAllowSwipeForItemAtIndexPath:v16])
      {
        v18 = [v6 cellForItemAtIndexPath:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          v20 = [v19 contentView];
          [v6 convertPoint:v20 toView:{v8, v10}];
          v22 = v21;
          v24 = v23;

          v25 = [v19 allowsSwipeToReply];
          v26 = [v19 isPointInAllowedSwipingArea:{v22, v24}];
          v14 = 0;
          if (v25 && v26)
          {
            v14 = v19;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end