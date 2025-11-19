@interface DTLeaksServicePreservedGraphFile
- (void)dealloc;
@end

@implementation DTLeaksServicePreservedGraphFile

- (void)dealloc
{
  if ([(DTLeaksServicePreservedGraphFile *)self fd]!= -1)
  {
    close([(DTLeaksServicePreservedGraphFile *)self fd]);
    [(DTLeaksServicePreservedGraphFile *)self setFd:0xFFFFFFFFLL];
  }

  v3.receiver = self;
  v3.super_class = DTLeaksServicePreservedGraphFile;
  [(DTLeaksServicePreservedGraphFile *)&v3 dealloc];
}

@end