@interface FMPFARSCNView
- (NSString)description;
- (_TtC11FMFindingUI13FMPFARSCNView)initWithFrame:(CGRect)frame;
- (_TtC11FMFindingUI13FMPFARSCNView)initWithFrame:(CGRect)frame options:(id)options;
- (void)_drawAtTime:(double)time;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation FMPFARSCNView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  sub_24A62EE64();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_24A62EE54();

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for FMPFARSCNView();
  [(FMPFARSCNView *)&v9 touchesBegan:v8 withEvent:eventCopy];
}

- (NSString)description
{
  selfCopy = self;
  sub_24A578204();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)_drawAtTime:(double)time
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPFARSCNView();
  [(FMPFARSCNView *)&v4 _drawAtTime:time];
}

- (_TtC11FMFindingUI13FMPFARSCNView)initWithFrame:(CGRect)frame options:(id)options
{
  if (options)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v8 = sub_24A62EB84();
    frame.origin.x = x;
    frame.origin.y = y;
    frame.size.width = width;
    frame.size.height = height;
  }

  else
  {
    v8 = 0;
  }

  return sub_24A5783B4(v8, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
}

- (_TtC11FMFindingUI13FMPFARSCNView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = sub_24A62EAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_innerIsolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v14 = sub_24A62F054();
  (*(v9 + 8))(v12, v8);
  *(&self->super.super.super.super.super.isa + v13) = v14;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_internalIsolationQueue) = 0;
  v15 = type metadata accessor for FMPFARSCNView();
  v17.receiver = self;
  v17.super_class = v15;
  return [(ARSCNView *)&v17 initWithFrame:x, y, width, height];
}

@end