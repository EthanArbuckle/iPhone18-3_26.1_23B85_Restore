@interface SFScreenTimeOverlayViewController(MobileSafariUIExtras)
- (double)snapshotContentRectInBounds:()MobileSafariUIExtras;
@end

@implementation SFScreenTimeOverlayViewController(MobileSafariUIExtras)

- (double)snapshotContentRectInBounds:()MobileSafariUIExtras
{
  v9 = [a1 view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  CGRectGetWidth(v25);
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  CGRectGetMinY(v26);
  v18 = [v9 window];
  v19 = [v18 windowScene];
  v20 = [v19 statusBarManager];
  [v20 statusBarFrame];
  CGRectGetHeight(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  CGRectGetHeight(v29);

  return 0.0;
}

@end