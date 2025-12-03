@interface DOCBrowserContainerController.DOCBrowserContainerControllerView
- (_TtCC26DocumentManagerExecutables29DOCBrowserContainerController33DOCBrowserContainerControllerView)initWithFrame:(CGRect)frame;
@end

@implementation DOCBrowserContainerController.DOCBrowserContainerControllerView

- (_TtCC26DocumentManagerExecutables29DOCBrowserContainerController33DOCBrowserContainerControllerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCBrowserContainerController.DOCBrowserContainerControllerView();
  return [(DOCView *)&v8 initWithFrame:x, y, width, height];
}

@end