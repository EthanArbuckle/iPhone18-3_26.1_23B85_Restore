@interface ICAttachmentMovieModel(UI)
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentMovieModel(UI)

- (void)drawPreviewInRect:()UI
{
  attachment = [self attachment];
  image = [attachment image];
  [image drawInRect:{a2, a3, a4, a5}];

  v20 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_video_play"];
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidX = CGRectGetMidX(v22);
  [v20 size];
  v13 = MidX - v12 * 0.5;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  MidY = CGRectGetMidY(v23);
  [v20 size];
  v16 = MidY - v15 * 0.5;
  [v20 size];
  v18 = v17;
  [v20 size];
  [v20 drawInRect:{v13, v16, v18, v19}];
}

@end