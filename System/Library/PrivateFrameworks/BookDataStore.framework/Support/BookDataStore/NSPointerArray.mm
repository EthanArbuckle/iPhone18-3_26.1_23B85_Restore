@interface NSPointerArray
- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)selector successSoFar:(BOOL)far errorSoFar:(id)soFar completion:(id)completion;
@end

@implementation NSPointerArray

- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)selector successSoFar:(BOOL)far errorSoFar:(id)soFar completion:(id)completion
{
  soFarCopy = soFar;
  completionCopy = completion;
  if (![(NSPointerArray *)self count])
  {
    v14 = objc_retainBlock(completionCopy);
    v15 = v14;
    if (v14)
    {
      v16 = v14[2];
LABEL_9:
      v16();
    }

LABEL_10:

    goto LABEL_15;
  }

  if (!soFarCopy)
  {
    v17 = objc_retainBlock(completionCopy);
    v15 = v17;
    if (v17)
    {
      v16 = v17[2];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = [(NSPointerArray *)self pointerAtIndex:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 methodForSelector:selector];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000EB0C;
    v20[3] = &unk_10023F8E8;
    v20[4] = self;
    selectorCopy = selector;
    v21 = completionCopy;
    v13(v12, selector, v20);
  }

  else
  {
    v18 = objc_retainBlock(completionCopy);
    if (v18)
    {
      v19 = [NSError errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
      v18[2](v18, 0, v19);
    }
  }

LABEL_15:
}

@end