@interface FSStatFSResult
- (FSStatFSResult)initWithCoder:(id)coder;
- (FSStatFSResult)initWithFileSystemTypeName:(id)name;
- (unint64_t)availableBlocks;
- (unint64_t)availableBytes;
- (unint64_t)freeBlocks;
- (unint64_t)freeBytes;
- (unint64_t)totalBlocks;
- (unint64_t)totalBytes;
- (unint64_t)usedBlocks;
- (unint64_t)usedBytes;
- (void)_fixUpValues;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSStatFSResult

- (void)_fixUpValues
{
  blockSize = self->_blockSize;
  if (!blockSize)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FSStatFSResult *)v4 _fixUpValues];
    }

    blockSize = 4096;
    self->_blockSize = 4096;
  }

  availableBytes = self->_availableBytes;
  availableBlocks = self->_availableBlocks;
  if (availableBytes)
  {
    if (!availableBlocks)
    {
      self->_availableBlocks = availableBytes / blockSize;
    }
  }

  else if (availableBlocks)
  {
    self->_availableBytes = blockSize * availableBlocks;
  }

  freeBytes = self->_freeBytes;
  freeBlocks = self->_freeBlocks;
  if (freeBytes)
  {
    if (!freeBlocks)
    {
      self->_freeBlocks = freeBytes / blockSize;
    }
  }

  else if (freeBlocks)
  {
    self->_freeBytes = blockSize * freeBlocks;
  }

  totalBytes = self->_totalBytes;
  totalBlocks = self->_totalBlocks;
  if (totalBytes)
  {
    if (!totalBlocks)
    {
      self->_totalBlocks = totalBytes / blockSize;
    }
  }

  else if (totalBlocks)
  {
    self->_totalBytes = blockSize * totalBlocks;
  }

  usedBytes = self->_usedBytes;
  usedBlocks = self->_usedBlocks;
  if (usedBytes)
  {
    if (!usedBlocks)
    {
      self->_usedBlocks = usedBytes / blockSize;
    }
  }

  else if (usedBlocks)
  {
    self->_usedBytes = blockSize * usedBlocks;
  }
}

- (unint64_t)totalBlocks
{
  result = self->_totalBlocks;
  if (!result)
  {
    blockSize = self->_blockSize;
    if (blockSize < 1)
    {
      return 0;
    }

    else
    {
      return self->_totalBytes / blockSize;
    }
  }

  return result;
}

- (unint64_t)availableBlocks
{
  result = self->_availableBlocks;
  if (!result)
  {
    blockSize = self->_blockSize;
    if (blockSize < 1)
    {
      return 0;
    }

    else
    {
      return self->_availableBytes / blockSize;
    }
  }

  return result;
}

- (unint64_t)freeBlocks
{
  result = self->_freeBlocks;
  if (!result)
  {
    blockSize = self->_blockSize;
    if (blockSize < 1)
    {
      return 0;
    }

    else
    {
      return self->_freeBytes / blockSize;
    }
  }

  return result;
}

- (unint64_t)usedBlocks
{
  result = self->_usedBlocks;
  if (!result)
  {
    blockSize = self->_blockSize;
    if (blockSize < 1)
    {
      return 0;
    }

    else
    {
      return self->_usedBytes / blockSize;
    }
  }

  return result;
}

- (unint64_t)totalBytes
{
  result = self->_totalBytes;
  if (!result)
  {
    return self->_blockSize * self->_totalBlocks;
  }

  return result;
}

- (unint64_t)availableBytes
{
  result = self->_availableBytes;
  if (!result)
  {
    return self->_blockSize * self->_availableBlocks;
  }

  return result;
}

- (unint64_t)freeBytes
{
  result = self->_freeBytes;
  if (!result)
  {
    return self->_blockSize * self->_freeBlocks;
  }

  return result;
}

- (unint64_t)usedBytes
{
  result = self->_usedBytes;
  if (!result)
  {
    return self->_blockSize * self->_usedBlocks;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(FSStatFSResult *)self _fixUpValues];
  v10 = 0;
  v5 = *&self->_totalBlocks;
  v9[0] = *&self->_blockSize;
  v9[1] = v5;
  v6 = *&self->_totalBytes;
  v9[2] = *&self->_freeBlocks;
  v9[3] = v6;
  v7 = *&self->_totalFiles;
  v9[4] = *&self->_freeBytes;
  v9[5] = v7;
  LODWORD(v10) = self->_fileSystemSubType;
  [coderCopy encodeBytes:v9 length:104 forKey:@"FSStatFSResult"];
  fileSystemTypeName = [(FSStatFSResult *)self fileSystemTypeName];
  [coderCopy encodeObject:fileSystemTypeName forKey:@"FSStatFSResult.fsTypeName"];
}

- (FSStatFSResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = FSStatFSResult;
  v13 = 0;
  v5 = [(FSStatFSResult *)&v12 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeBytesForKey:@"FSStatFSResult" returnedLength:&v13];
  v7 = 0;
  if (v6 && v13 == 104)
  {
    *(v5 + 72) = *v6;
    *(v5 + 1) = *(v6 + 16);
    *(v5 + 2) = *(v6 + 24);
    *(v5 + 3) = *(v6 + 32);
    *(v5 + 4) = *(v6 + 40);
    *(v5 + 5) = *(v6 + 48);
    *(v5 + 6) = *(v6 + 56);
    *(v5 + 7) = *(v6 + 64);
    *(v5 + 8) = *(v6 + 72);
    *(v5 + 11) = *(v6 + 80);
    v8 = *(v6 + 96);
    *(v5 + 12) = *(v6 + 88);
    *(v5 + 13) = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSStatFSResult.fsTypeName"];
    v10 = *(v5 + 14);
    *(v5 + 14) = v9;

LABEL_5:
    v7 = v5;
  }

  return v7;
}

- (FSStatFSResult)initWithFileSystemTypeName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = FSStatFSResult;
  v5 = [(FSStatFSResult *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_blockSize = 4096;
    v7 = [nameCopy copy];
    fileSystemTypeName = v6->_fileSystemTypeName;
    v6->_fileSystemTypeName = v7;
  }

  return v6;
}

@end