@interface CKSwipeToReplyRules
+ (id)balloonCellFromGestureRecognizer:(id)recognizer inTranscriptCollectionView:(id)view;
@end

@implementation CKSwipeToReplyRules

+ (id)balloonCellFromGestureRecognizer:(id)recognizer inTranscriptCollectionView:(id)view
{
  recognizerCopy = recognizer;
  viewCopy = view;
  if (CKIsRunningInMessagesNotificationExtension() || ([viewCopy _ck_isEditing] & 1) != 0 || (objc_msgSend(viewCopy, "isDecelerating") & 1) != 0)
  {
    goto LABEL_7;
  }

  [recognizerCopy locationInView:viewCopy];
  v8 = v7;
  v10 = v9;
  [recognizerCopy velocityInView:viewCopy];
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
    v16 = [viewCopy indexPathForItemAtPoint:0 inSection:{v8, v10}];
    if (v16)
    {
      delegate = [viewCopy delegate];
      if ([delegate collectionView:viewCopy shouldAllowSwipeForItemAtIndexPath:v16])
      {
        v18 = [viewCopy cellForItemAtIndexPath:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          contentView = [v19 contentView];
          [viewCopy convertPoint:contentView toView:{v8, v10}];
          v22 = v21;
          v24 = v23;

          allowsSwipeToReply = [v19 allowsSwipeToReply];
          v26 = [v19 isPointInAllowedSwipingArea:{v22, v24}];
          v14 = 0;
          if (allowsSwipeToReply && v26)
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