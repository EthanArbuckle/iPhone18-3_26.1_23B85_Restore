@interface PBUIWallpaperUpdateAndPrewarmAction
- (PBUIWallpaperUpdateAndPrewarmAction)initWithResponder:(id)responder;
@end

@implementation PBUIWallpaperUpdateAndPrewarmAction

- (PBUIWallpaperUpdateAndPrewarmAction)initWithResponder:(id)responder
{
  v4.receiver = self;
  v4.super_class = PBUIWallpaperUpdateAndPrewarmAction;
  return [(PBUIWallpaperUpdateAndPrewarmAction *)&v4 initWithInfo:0 responder:responder];
}

@end