@interface DOCSplitViewState
- (BOOL)isCollapsed;
- (BOOL)isSidebarShown;
- (BOOL)isSidebarShownInOverlay;
- (BOOL)isSidebarShownInline;
- (DOCSplitViewState)init;
- (NSString)description;
- (id)withDisplayMode:(int64_t)mode;
- (id)withIsCollapsed:(BOOL)collapsed;
- (int64_t)displayMode;
@end

@implementation DOCSplitViewState

- (DOCSplitViewState)init
{
  *(&self->super.isa + OBJC_IVAR___DOCSplitViewState__impl) = xmmword_249BA1BA0;
  v3.receiver = self;
  v3.super_class = DOCSplitViewState;
  return [(DOCSplitViewState *)&v3 init];
}

- (BOOL)isCollapsed
{
  v2 = *(&self->super.isa + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = v2 & 1;
  }

  return self;
}

- (BOOL)isSidebarShownInOverlay
{
  v2 = *(&self->super.isa + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = (*&self->_impl[OBJC_IVAR___DOCSplitViewState__impl] == 3) & ~v2;
  }

  return self;
}

- (BOOL)isSidebarShownInline
{
  v2 = *(&self->super.isa + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = (*&self->_impl[OBJC_IVAR___DOCSplitViewState__impl] == 2) & ~v2;
  }

  return self;
}

- (BOOL)isSidebarShown
{
  v2 = *(&self->super.isa + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = ((*&self->_impl[OBJC_IVAR___DOCSplitViewState__impl] & 0xFFFFFFFFFFFFFFFELL) == 2) & ~v2;
  }

  return self;
}

- (int64_t)displayMode
{
  if (*(self + OBJC_IVAR___DOCSplitViewState__impl) != 2)
  {
    return *(self + OBJC_IVAR___DOCSplitViewState__impl + 8);
  }

  __break(1u);
  return self;
}

- (id)withIsCollapsed:(BOOL)collapsed
{
  if (*(self + OBJC_IVAR___DOCSplitViewState__impl) == 2)
  {
    __break(1u);
  }

  else
  {
    collapsedCopy = collapsed;
    v4 = *(self + OBJC_IVAR___DOCSplitViewState__impl + 8);
    v5 = [objc_allocWithZone(DOCSplitViewState) init];
    v6 = &v5[OBJC_IVAR___DOCSplitViewState__impl];
    *v6 = collapsedCopy;
    *(v6 + 1) = v4;

    return v5;
  }

  return self;
}

- (id)withDisplayMode:(int64_t)mode
{
  v3 = *(self + OBJC_IVAR___DOCSplitViewState__impl);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_allocWithZone(DOCSplitViewState) init];
    v6 = &v5[OBJC_IVAR___DOCSplitViewState__impl];
    *v6 = v3 & 1;
    *(v6 + 1) = mode;

    return v5;
  }

  return self;
}

- (NSString)description
{
  v3 = *(self + OBJC_IVAR___DOCSplitViewState__impl);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = DOCSplitViewState.Impl.description.getter(v3 & 1, *(self + OBJC_IVAR___DOCSplitViewState__impl + 8));
    v5 = MEMORY[0x24C1FAD20](v4);

    return v5;
  }

  return self;
}

@end