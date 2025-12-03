@interface NMSPodcastSizeInfo
- (BOOL)isEqual:(id)equal;
- (NMSPodcastSizeInfo)init;
- (NMSPodcastSizeInfo)initWithCoder:(id)coder;
- (double)sizeDurationRatio;
- (id)description;
- (unint64_t)averageSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NMSPodcastSizeInfo

- (NMSPodcastSizeInfo)init
{
  v3.receiver = self;
  v3.super_class = NMSPodcastSizeInfo;
  result = [(NMSPodcastSizeInfo *)&v3 init];
  if (result)
  {
    result->_totalSize = 0;
    result->_totalDuration = 0.0;
    result->_count = 0;
  }

  return result;
}

- (double)sizeDurationRatio
{
  totalDuration = self->_totalDuration;
  result = 16000.0;
  if (fabs(totalDuration) >= 2.22044605e-16)
  {
    totalSize = self->_totalSize;
    if (totalSize)
    {
      return totalSize / totalDuration;
    }
  }

  return result;
}

- (unint64_t)averageSize
{
  count = self->_count;
  result = self->_totalSize;
  if (count)
  {
    result /= count;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    totalSize = [(NMSPodcastSizeInfo *)self totalSize];
    if (totalSize == [(NMSPodcastSizeInfo *)v6 totalSize]&& ([(NMSPodcastSizeInfo *)self totalDuration], v9 = v8, [(NMSPodcastSizeInfo *)v6 totalDuration], vabdd_f64(v9, v10) < 2.22044605e-16))
    {
      v11 = [(NMSPodcastSizeInfo *)self count];
      v12 = v11 == [(NMSPodcastSizeInfo *)v6 count];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p totalSize:%llu totalDuration:%f count:%llu>", v5, self, self->_totalSize, *&self->_totalDuration, self->_count];

  return v6;
}

- (NMSPodcastSizeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NMSPodcastSizeInfo;
  v5 = [(NMSPodcastSizeInfo *)&v11 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_totalSize);
    v5->_totalSize = [coderCopy decodeInt64ForKey:v6];

    v7 = NSStringFromSelector(sel_totalDuration);
    [coderCopy decodeDoubleForKey:v7];
    v5->_totalDuration = v8;

    v9 = NSStringFromSelector(sel_count);
    v5->_count = [coderCopy decodeInt64ForKey:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  totalSize = self->_totalSize;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_totalSize);
  [coderCopy encodeInt64:totalSize forKey:v6];

  totalDuration = self->_totalDuration;
  v8 = NSStringFromSelector(sel_totalDuration);
  [coderCopy encodeDouble:v8 forKey:totalDuration];

  count = self->_count;
  v10 = NSStringFromSelector(sel_count);
  [coderCopy encodeInt64:count forKey:v10];
}

@end