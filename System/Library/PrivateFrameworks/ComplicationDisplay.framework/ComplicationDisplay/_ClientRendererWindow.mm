@interface _ClientRendererWindow
- (_ClientRendererWindow)init;
@end

@implementation _ClientRendererWindow

- (_ClientRendererWindow)init
{
  v5.receiver = self;
  v5.super_class = _ClientRendererWindow;
  v2 = [(_ClientRendererWindow *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(_ClientRendererWindow *)v2 setBackgroundColor:blackColor];

    [(_ClientRendererWindow *)v2 setOpaque:1];
  }

  return v2;
}

@end