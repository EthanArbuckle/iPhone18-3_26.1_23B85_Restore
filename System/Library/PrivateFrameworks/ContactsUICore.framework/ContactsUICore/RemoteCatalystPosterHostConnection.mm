@interface RemoteCatalystPosterHostConnection
- (void)setContact:(id)contact salientContentRectangle:(CGRect)rectangle;
@end

@implementation RemoteCatalystPosterHostConnection

- (void)setContact:(id)contact salientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v10 = self + qword_1EB0EDBD0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    contactCopy = contact;
    selfCopy = self;
    v13(contactCopy, ObjectType, v11, x, y, width, height);
    swift_unknownObjectRelease();
  }
}

@end