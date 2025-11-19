@interface DOCBrowserContainerController.DOCBrowserContainerControllerView
- (_TtCC26DocumentManagerExecutables29DOCBrowserContainerController33DOCBrowserContainerControllerView)initWithFrame:(CGRect)a3;
@end

@implementation DOCBrowserContainerController.DOCBrowserContainerControllerView

- (_TtCC26DocumentManagerExecutables29DOCBrowserContainerController33DOCBrowserContainerControllerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCBrowserContainerController.DOCBrowserContainerControllerView();
  return [(DOCView *)&v8 initWithFrame:x, y, width, height];
}

@end