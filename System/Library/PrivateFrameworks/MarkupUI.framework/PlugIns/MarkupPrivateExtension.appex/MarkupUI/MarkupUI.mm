void sub_10000143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001468(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000156C;
    block[3] = &unk_100008350;
    objc_copyWeak(&v12, (a1 + 56));
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v9 = v5;
    v6 = v3;
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    dispatch_after(v4, &_dispatch_main_q, block);

    objc_destroyWeak(&v12);
  }

  else if ([*(a1 + 48) useFancyTransition])
  {
    [*(a1 + 48) _bailFailedAnimateEnterMarkup];
  }
}

void sub_10000156C(uint64_t a1)
{
  v2 = +[NSOperationQueue mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000166C;
  v6[3] = &unk_100008350;
  objc_copyWeak(&v9, (a1 + 64));
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *(a1 + 56);
  v7 = v5;
  v8 = v4;
  [v2 addOperationWithBlock:v6];

  objc_destroyWeak(&v9);
}

void sub_10000166C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKey:MUEncryptPrivateMetadata];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained setEncryptPrivateMetadata:{objc_msgSend(v4, "BOOLValue")}];
  }

  if ([*(a1 + 40) conformsToType:UTTypeFileURL])
  {
    [WeakRetained setFileURL:*(a1 + 48) withArchivedModelData:0];
  }

  else if ([*(a1 + 40) conformsToType:UTTypeData])
  {
    v5 = *(a1 + 48);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100001878;
    v11 = &unk_100008328;
    objc_copyWeak(&v13, (a1 + 64));
    v12 = *(a1 + 32);
    [WeakRetained _setData:v5 withArchivedModelData:0 withCompletion:&v8];
    objc_destroyWeak(&v13);
  }

  else if ([*(a1 + 40) conformsToType:UTTypeImage])
  {
    [WeakRetained setImage:*(a1 + 48) withArchivedModelData:0];
  }

  else if ([*(a1 + 40) conformsToType:UTTypePDF])
  {
    [WeakRetained setData:*(a1 + 48) withArchivedModelData:0];
  }

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 valueForKey:MUFileDisplayName];

  if (v7)
  {
    [*(a1 + 56) setPreferredFileDisplayName:v7];
  }
}

void sub_100001878(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained useFancyTransition])
  {
    v2 = [*(a1 + 32) userInfo];
    [WeakRetained _animateEnteringMarkupWithInfo:v2];
  }
}

id sub_1000019C4(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewController];
  [v2 visibleContentRect];
  v4 = v3;
  v6 = v5;

  v7 = *(a1 + 32);

  return [v7 _adjustFormSheetFrameToFitSize:{v4, v6}];
}

void sub_100002C1C(id *a1)
{
  v2 = [a1[4] contentContainerView];
  v3 = *&CGAffineTransformIdentity.c;
  v38[0] = *&CGAffineTransformIdentity.a;
  v38[1] = v3;
  v38[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v38];

  v4 = a1[5];
  v5 = [a1[4] contentViewController];
  [v5 visibleContentRect];
  [v4 convertRect:0 fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100002F40;
  v36[3] = &unk_1000083C8;
  v37 = a1[6];
  [UIView addKeyframeWithRelativeStartTime:v36 relativeDuration:0.75 animations:0.25];
  [a1[5] bounds];
  v40.origin.x = v7;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  if (!CGRectContainsRect(v39, v40))
  {
    v14 = [a1[4] showAsFormSheet];
    v15 = a1[4];
    if (v14)
    {
      [v15 _rectBetweenNavAndToolbar];
    }

    else
    {
      v5 = [v15 view];
      [v5 bounds];
    }

    [a1[5] setFrame:?];
    if ((v14 & 1) == 0)
    {
    }

    v16 = a1[5];
    v17 = [a1[4] contentViewController];
    [v17 visibleContentRect];
    [v16 convertRect:0 fromView:?];
    v7 = v18;
    v9 = v19;
    v11 = v20;
    v13 = v21;
  }

  [a1[7] setFrame:{v7, v9, v11, v13}];
  v22 = a1[8];
  if (v22)
  {
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100002FC8;
    v34 = &unk_1000083C8;
    v35 = v22;
    [UIView addKeyframeWithRelativeStartTime:&v31 relativeDuration:0.0 animations:0.5];
    [a1[7] bounds];
    [a1[8] setFrame:?];
  }

  v23 = [a1[4] toolbar];
  [v23 setAlpha:1.0];

  v24 = [a1[4] navBar];
  [v24 setAlpha:1.0];

  v25 = [a1[4] contentViewController];
  v26 = [v25 view];
  [v26 setAlpha:1.0];

  if ([a1[4] showAsFormSheet])
  {
    v27 = [a1[4] transitionDimmingView];
    [v27 setAlpha:0.37];
  }

  v28 = [a1[4] annotationController];
  v29 = [v28 toolbarViewController];

  v30 = [v29 floatingAttributeToolbarContainer];
  [v30 setAlpha:1.0];

  [a1[9] setAlpha:1.0];
}

id sub_100002F40(uint64_t a1)
{
  +[CATransaction begin];
  v2 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [CATransaction setAnimationTimingFunction:v2];

  [*(a1 + 32) setAlpha:0.0];

  return +[CATransaction commit];
}

id sub_100002FD4(id *a1)
{
  [a1[4] removeFromSuperview];
  [a1[5] removeFromSuperview];
  [a1[6] removeFromSuperview];
  v2 = [a1[7] _effectiveBackgroundColor];
  v3 = [a1[7] contentContainerView];
  [v3 setBackgroundColor:v2];

  if (([a1[7] showAsFormSheet] & 1) == 0)
  {
    v4 = [a1[7] whiteView];
    [v4 removeFromSuperview];

    [a1[7] setWhiteView:0];
  }

  v5 = a1[7];

  return [v5 setIsAnimatingMarkupExtensionTransition:0];
}

void sub_100003754(uint64_t a1)
{
  if ([*(a1 + 32) showAsFormSheet])
  {
    v2 = *(*(a1 + 72) + 8);
    v3 = [*(a1 + 32) view];
    [v3 convertRect:0 fromView:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    v44.origin.x = v4;
    v44.origin.y = v5;
    v44.size.width = v6;
    v44.size.height = v7;
    v43 = CGRectIntersection(v2[1], v44);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;

    v12 = *(a1 + 32);
    if (v12)
    {
      [v12 _transformToHideContainerViewBehindBounds:{x, y, width, height}];
      v12 = *(a1 + 32);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
    }

    v13 = [v12 contentContainerView];
    v39[0] = v40;
    v39[1] = v41;
    v39[2] = v42;
    [v13 setTransform:v39];
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100003AE0;
  v37[3] = &unk_1000083C8;
  v38 = *(a1 + 40);
  [UIView addKeyframeWithRelativeStartTime:v37 relativeDuration:0.0 animations:0.25];
  if (CGRectContainsRect(*(*(*(a1 + 72) + 8) + 32), *(a1 + 80)))
  {
    v14 = *(*(a1 + 72) + 8);
    v15 = *(a1 + 96);
    *(v14 + 32) = *(a1 + 80);
    *(v14 + 48) = v15;
  }

  v16 = *(*(a1 + 72) + 8);
  [*(a1 + 48) frame];
  v45.origin.x = v17;
  v45.origin.y = v18;
  v45.size.width = v19;
  v45.size.height = v20;
  if (!CGRectEqualToRect(v16[1], v45))
  {
    [*(a1 + 48) setFrame:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56)}];
  }

  v21 = *(a1 + 48);
  v22 = [*(a1 + 32) view];
  v23 = [v22 window];
  [v21 convertRect:v23 fromView:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 56) setFrame:?];

  if (*(a1 + 64))
  {
    [*(a1 + 56) bounds];
    [*(a1 + 64) setFrame:?];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100003B68;
    v35 = &unk_1000083C8;
    v36 = *(a1 + 64);
    [UIView addKeyframeWithRelativeStartTime:&v32 relativeDuration:0.5 animations:0.5];
  }

  v24 = [*(a1 + 32) contentViewController];
  v25 = [v24 view];
  [v25 setAlpha:0.0];

  v26 = [*(a1 + 32) toolbar];
  [v26 setAlpha:0.0];

  v27 = [*(a1 + 32) navBar];
  [v27 setAlpha:0.0];

  if ([*(a1 + 32) showAsFormSheet])
  {
    v28 = [*(a1 + 32) transitionDimmingView];
    [v28 setAlpha:0.0];
  }

  v29 = [*(a1 + 32) annotationController];
  v30 = [v29 toolbarViewController];

  v31 = [v30 floatingAttributeToolbarContainer];
  [v31 setAlpha:0.0];
}

id sub_100003AE0(uint64_t a1)
{
  +[CATransaction begin];
  v2 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [CATransaction setAnimationTimingFunction:v2];

  [*(a1 + 32) setAlpha:1.0];

  return +[CATransaction commit];
}

void sub_100003B74(uint64_t a1)
{
  if ([*(a1 + 32) userDidCancel])
  {
    v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:&__NSDictionary0__struct];
    v2 = [*(a1 + 32) extensionContext];
    [v2 cancelRequestWithError:v4];

    [*(a1 + 32) documentDidCloseTeardown];
  }

  else
  {
    v3 = [*(a1 + 32) extensionContext];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003C88;
    v5[3] = &unk_100008468;
    v5[4] = *(a1 + 32);
    [v3 completeRequestReturningItems:0 completionHandler:v5];
  }
}

void sub_100003C88(uint64_t a1)
{
  if (+[NSThread isMainThread])
  {
    v2 = *(a1 + 32);

    [v2 documentDidCloseTeardown];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003D40;
    block[3] = &unk_1000083C8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}