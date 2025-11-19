@interface RemoteCatalystPosterHostConnection
- (void)setContact:(id)a3 salientContentRectangle:(CGRect)a4;
@end

@implementation RemoteCatalystPosterHostConnection

- (void)setContact:(id)a3 salientContentRectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = self + qword_1EB0EDBD0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    v14 = a3;
    v15 = self;
    v13(v14, ObjectType, v11, x, y, width, height);
    swift_unknownObjectRelease();
  }
}

@end