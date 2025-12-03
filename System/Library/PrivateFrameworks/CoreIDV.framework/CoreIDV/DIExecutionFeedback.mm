@interface DIExecutionFeedback
- (BOOL)consumed;
- (DIExecutionFeedback)init;
- (DIExecutionFeedback)initWithCoder:(id)coder;
- (NSDate)finishDate;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setConsumed:(BOOL)consumed;
- (void)setFinishDate:(id)date;
@end

@implementation DIExecutionFeedback

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeBool:self->_consumed forKey:@"consumed"];
  [coderCopy encodeObject:self->_finishDate forKey:@"finishDate"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIExecutionFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DIExecutionFeedback *)self init];
  if (v5)
  {
    v5->_consumed = [coderCopy decodeBoolForKey:@"consumed"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finishDate"];
    finishDate = v5->_finishDate;
    v5->_finishDate = v6;
  }

  return v5;
}

- (DIExecutionFeedback)init
{
  v7.receiver = self;
  v7.super_class = DIExecutionFeedback;
  v2 = [(DIExecutionFeedback *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_consumed = 1;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    finishDate = v3->_finishDate;
    v3->_finishDate = distantPast;
  }

  return v3;
}

- (BOOL)consumed
{
  os_unfair_lock_lock(&self->_lock);
  consumed = self->_consumed;
  os_unfair_lock_unlock(&self->_lock);
  return consumed;
}

- (void)setConsumed:(BOOL)consumed
{
  os_unfair_lock_lock(&self->_lock);
  self->_consumed = consumed;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)finishDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_finishDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFinishDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  if (self->_finishDate != dateCopy)
  {
    v4 = [(NSDate *)dateCopy copyWithZone:0];
    finishDate = self->_finishDate;
    self->_finishDate = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_282E746B8];
  v7.receiver = self;
  v7.super_class = DIExecutionFeedback;
  v4 = [(DIExecutionFeedback *)&v7 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->_lock);
  if (self->_consumed)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"consumed: '%@'; ", v5];
  [v3 appendFormat:@"finishDate: '%@';", self->_finishDate];
  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];

  return v3;
}

@end