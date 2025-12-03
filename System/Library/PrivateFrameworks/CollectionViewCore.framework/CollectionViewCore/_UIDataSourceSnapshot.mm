@interface _UIDataSourceSnapshot
- (_NSRange)rangeForSection:(int64_t)section;
- (_UIDataSourceSnapshot)initWithDataSourceSnapshotter:(id)snapshotter;
@end

@implementation _UIDataSourceSnapshot

- (_UIDataSourceSnapshot)initWithDataSourceSnapshotter:(id)snapshotter
{
  snapshotterCopy = snapshotter;
  v9.receiver = self;
  v9.super_class = _UIDataSourceSnapshot;
  v5 = [(_UIDataSourceSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [snapshotterCopy copy];
    snapshotter = v5->_snapshotter;
    v5->_snapshotter = v6;
  }

  return v5;
}

- (_NSRange)rangeForSection:(int64_t)section
{
  v3 = [(_UIDataSourceSnapshotter *)self->_snapshotter rangeForSection:section];
  result.length = v4;
  result.location = v3;
  return result;
}

@end