@interface SecureMemoryIndex
- (NSString)description;
- (SecureMemoryIndex)init;
- (id)memoryIndexes;
- (int64_t)indexCount;
- (void)insertWithLabel:(id)label resource:(id)resource;
@end

@implementation SecureMemoryIndex

- (SecureMemoryIndex)init
{
  *(&self->super.isa + OBJC_IVAR___SecureMemoryIndex_indexData) = MEMORY[0x277D84F98];
  v3.receiver = self;
  v3.super_class = SecureMemoryIndex;
  return [(SecureMemoryIndex *)&v3 init];
}

- (id)memoryIndexes
{
  v3 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);

  v5 = sub_247994E44();

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  SecureMemoryIndex.description.getter();

  v3 = sub_247994E74();

  return v3;
}

- (void)insertWithLabel:(id)label resource:(id)resource
{
  v6 = sub_247994E84();
  v8 = v7;
  resourceCopy = resource;
  selfCopy = self;
  v11 = sub_247994C54();
  v13 = v12;

  v14 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  sub_247978CAC(v11, v13);
  v15 = *(&selfCopy->super.isa + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(&selfCopy->super.isa + v14);
  *(&selfCopy->super.isa + v14) = 0x8000000000000000;
  sub_247990CD4(v11, v13, v6, v8, isUniquelyReferenced_nonNull_native);

  *(&selfCopy->super.isa + v14) = v17;
  swift_endAccess();

  sub_247978C04(v11, v13);
}

- (int64_t)indexCount
{
  v3 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

@end