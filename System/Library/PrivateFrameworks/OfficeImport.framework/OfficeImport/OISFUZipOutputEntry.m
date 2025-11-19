@interface OISFUZipOutputEntry
- (id)description;
- (int64_t)compareByOffset:(id)a3;
- (void)dealloc;
@end

@implementation OISFUZipOutputEntry

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipOutputEntry;
  [(OISFUZipOutputEntry *)&v3 dealloc];
}

- (id)description
{
  if (self->isCompressed)
  {
    v2 = @"yes";
  }

  else
  {
    v2 = @"no";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<SFUZipOutputEntry %p: name=%@, isCompressed=%@, compressedSize=%qu, uncompressedSize=%qu, offset=%qu>", self, self->name, v2, self->compressedSize, self->uncompressedSize, self->offset];
}

- (int64_t)compareByOffset:(id)a3
{
  offset = self->offset;
  v4 = *(a3 + 6);
  v5 = offset >= v4;
  v6 = offset > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end