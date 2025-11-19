@interface NSPointerArray
- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)a3 successSoFar:(BOOL)a4 errorSoFar:(id)a5 completion:(id)a6;
@end

@implementation NSPointerArray

- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)a3 successSoFar:(BOOL)a4 errorSoFar:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (![(NSPointerArray *)self count])
  {
    v14 = objc_retainBlock(v10);
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

  if (!v9)
  {
    v17 = objc_retainBlock(v10);
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
    v13 = [v11 methodForSelector:a3];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000EB0C;
    v20[3] = &unk_10023F8E8;
    v20[4] = self;
    v22 = a3;
    v21 = v10;
    v13(v12, a3, v20);
  }

  else
  {
    v18 = objc_retainBlock(v10);
    if (v18)
    {
      v19 = [NSError errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
      v18[2](v18, 0, v19);
    }
  }

LABEL_15:
}

@end