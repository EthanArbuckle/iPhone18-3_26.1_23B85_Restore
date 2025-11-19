@interface DIAttachedDeviceInfo
+ (id)DI1URLWithData:(id)a3 error:(id *)a4;
+ (id)copyAllMountPoints;
+ (id)newDI1DevicesArrayWithError:(id *)a3;
+ (id)newDI2DevicesArrayWithError:(id *)a3;
+ (id)newDevicesArrayWithError:(id *)a3;
+ (id)newEntityDictWithIOMedia:(id)a3 mountPoints:(id)a4;
- (BOOL)fillDI1InfoWithDevice:(id)a3 error:(id *)a4;
- (BOOL)fillDI2InfoWithDevice:(id)a3 error:(id *)a4;
- (BOOL)setDI2PIDWithDevice:(id)a3 error:(id *)a4;
- (DIAttachedDeviceInfo)initWithBSDName:(id)a3 error:(id *)a4;
- (DIAttachedDeviceInfo)initWithDevice:(id)a3 error:(id *)a4;
- (id)copyEntitiesList;
- (id)description;
- (id)toDictionary;
@end

@implementation DIAttachedDeviceInfo

- (DIAttachedDeviceInfo)initWithDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = DIAttachedDeviceInfo;
  v7 = [(DIAttachedDeviceInfo *)&v20 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v6 copyIOMediaWithError:a4];
  ioMedia = v7->_ioMedia;
  v7->_ioMedia = v8;

  v10 = v7->_ioMedia;
  if (!v10)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v11 = [(DIIOObject *)v10 copyPropertyWithClass:objc_opt_class() key:@"Size"];
  mediaSize = v7->_mediaSize;
  v7->_mediaSize = v11;

  v13 = [(DIIOObject *)v7->_ioMedia copyPropertyWithClass:objc_opt_class() key:@"Preferred Block Size"];
  blockSize = v7->_blockSize;
  v7->_blockSize = v13;

  v15 = [(DIIOMedia *)v7->_ioMedia BSDName];
  BSDName = v7->_BSDName;
  v7->_BSDName = v15;

  if (!v7->_mediaSize || !v7->_blockSize || !v7->_BSDName)
  {
    v17 = [DIError nilWithEnumValue:153 verboseInfo:@"Basic information about the IOMedia device is missing" error:a4];
    goto LABEL_10;
  }

  if (![v6 diskImageDevice])
  {
    if (!IOObjectConformsTo([v6 ioObj], "IOHDIXHDDriveNub"))
    {
      v17 = [DIError nilWithEnumValue:157 description:@"Device is not a disk image" error:a4];
      goto LABEL_10;
    }

    if ([(DIAttachedDeviceInfo *)v7 fillDI1InfoWithDevice:v6 error:a4])
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (![(DIAttachedDeviceInfo *)v7 fillDI2InfoWithDevice:v6 error:a4])
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v7;
LABEL_10:
  v18 = v17;
LABEL_14:

  return v18;
}

- (BOOL)fillDI2InfoWithDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 copyPropertyWithClass:objc_opt_class() key:@"DiskImageURL"];
  v8 = v7;
  if (v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  }

  imageURL = self->_imageURL;
  self->_imageURL = v7;

  if (self->_imageURL)
  {
    v10 = [v6 copyPropertyWithClass:objc_opt_class() key:@"ShadowURL"];
    v11 = v10;
    if (v10)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
    }

    shadowURL = self->_shadowURL;
    self->_shadowURL = v10;

    v13 = [v6 copyPropertyWithClass:objc_opt_class() key:@"CacheURL"];
    v14 = v13;
    if (v13)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
    }

    cacheURL = self->_cacheURL;
    self->_cacheURL = v13;

    v16 = [v6 copyPropertyWithClass:objc_opt_class() key:@"InstanceID"];
    instanceId = self->_instanceId;
    self->_instanceId = v16;

    self->_frameworkNum = 2;
    v18 = [(DIAttachedDeviceInfo *)self setDI2PIDWithDevice:v6 error:a4]|| [DIError failWithEnumValue:153 verboseInfo:@"Failed to get Daemon PID" error:a4];
  }

  else
  {
    v18 = [DIError failWithEnumValue:153 verboseInfo:@"Invalid or missing image URL key" error:a4];
  }

  return v18;
}

- (BOOL)setDI2PIDWithDevice:(id)a3 error:(id *)a4
{
  v18 = -1;
  v5 = [a3 newIteratorWithOptions:0 error:a4];
  v6 = [[DIIOObject alloc] initWithIteratorNext:v5];
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "DIDeviceIOUserClient"))
      {
        v8 = [(DIIOObject *)v7 copyPropertyWithClass:objc_opt_class() key:@"IOUserClientCreator"];
        if (v8)
        {
          break;
        }
      }

      v9 = [[DIIOObject alloc] initWithIteratorNext:v5];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v11 = v8;
    v12 = [MEMORY[0x277CCAC80] scannerWithString:v8];
    v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v14 = [v12 scanUpToCharactersFromSet:v13 intoString:0];

    if (v14 && [v12 scanInteger:&v18])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      pid = self->_pid;
      self->_pid = v15;

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

+ (id)DI1URLWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6 encoding:4];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 scheme];

      if (v10)
      {
        goto LABEL_8;
      }
    }

    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v7];

    v9 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    v12 = @"Invalid path property (not a path or URL)";
  }

  else
  {
    v12 = @"Invalid path property (not UTF8)";
  }

  v9 = [DIError nilWithEnumValue:153 verboseInfo:v12 error:a4];
LABEL_8:

  return v9;
}

- (BOOL)fillDI1InfoWithDevice:(id)a3 error:(id *)a4
{
  v6 = [a3 copyParentWithError:a4];
  if (v6)
  {
    v7 = [v6 copyPropertyWithClass:objc_opt_class() key:@"image-path"];
    if (v7)
    {
      v8 = [DIAttachedDeviceInfo DI1URLWithData:v7 error:a4];
      imageURL = self->_imageURL;
      self->_imageURL = v8;

      if (self->_imageURL)
      {
        v10 = [v6 copyPropertyWithClass:objc_opt_class() key:@"shadow-path"];
        if (v10 && ([DIAttachedDeviceInfo DI1URLWithData:v10 error:a4], v11 = objc_claimAutoreleasedReturnValue(), shadowURL = self->_shadowURL, self->_shadowURL = v11, shadowURL, !self->_shadowURL))
        {
          v13 = 0;
        }

        else
        {
          v13 = 1;
          self->_frameworkNum = 1;
          v14 = [v6 copyPropertyWithClass:objc_opt_class() key:@"hdid-pid"];
          pid = self->_pid;
          self->_pid = v14;

          if (!self->_pid)
          {
            self->_pid = &unk_285C0F428;

            v13 = 1;
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [DIError failWithEnumValue:153 verboseInfo:@"Missing image path property" error:a4];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (DIAttachedDeviceInfo)initWithBSDName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[DIIOMedia alloc] initWithDevName:v6 error:a4];

  if (v7)
  {
    v8 = [(DIIOMedia *)v7 copyBlockDeviceWithError:a4];
    if (v8)
    {
      self = [(DIAttachedDeviceInfo *)self initWithDevice:v8 error:a4];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newDI1DevicesArrayWithError:(id *)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [[DIIOObject alloc] initWithClassName:@"IOHDIXController" error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [(DIIOObject *)v5 newIteratorWithOptions:0 error:a3];
    if (v7)
    {
      v8 = [[DIIOObject alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [v4 removeAllObjects];
            [v7 setStartedOver:0];
          }

          v10 = [(DIIOObject *)v9 ioObjectWithClassName:@"IOHDIXHDDriveNub" iterateParent:0 error:a3];
          if (v10)
          {
            v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithDIIOObject:v10];
            v12 = [[DIAttachedDeviceInfo alloc] initWithDevice:v11 error:0];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }

          v13 = [[DIIOObject alloc] initWithIteratorNext:v7];
          v9 = v13;
        }

        while (v13);
      }

      v14 = v4;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v4;
  }

  return v14;
}

+ (id)newDI2DevicesArrayWithError:(id *)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [DIIOObject copyDiskImagesControllerWithError:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 newIteratorWithOptions:0 error:a3];
    if (v7)
    {
      v8 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [v4 removeAllObjects];
            [v7 setStartedOver:0];
          }

          if ([(DIBlockDevice *)v9 diskImageDevice])
          {
            v10 = [[DIAttachedDeviceInfo alloc] initWithDevice:v9 error:0];
            if (v10)
            {
              [v4 addObject:v10];
            }
          }

          v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];

          v9 = v11;
        }

        while (v11);
      }

      v12 = v4;
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

+ (id)newDevicesArrayWithError:(id *)a3
{
  v5 = [a1 newDI2DevicesArrayWithError:?];
  if (v5)
  {
    v6 = [a1 newDI1DevicesArrayWithError:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
      [v7 addObjectsFromArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DIAttachedDeviceInfo *)self BSDName];
  v5 = [(DIAttachedDeviceInfo *)self imageURL];
  v6 = [v3 stringWithFormat:@"Attached disk image device info: BSD Name [%@], image URL [%@]", v4, v5];

  return v6;
}

+ (id)copyAllMountPoints
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0;
  v3 = getmntinfo_r_np(&v16, 2);
  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 2168 * v3;
      do
      {
        v6 = [DIHelpers copyDevicePathWithStatfs:&v16[v4 / 0x878]];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16[v4 / 0x878].f_mntonname];
        if (v6)
        {
          if ([v6 hasPrefix:@"/dev/disk"])
          {
            v8 = v7 == 0;
          }

          else
          {
            v8 = 1;
          }

          if (!v8)
          {
            v9 = [v6 lastPathComponent];
            [v2 setObject:v7 forKeyedSubscript:v9];
          }
        }

        v4 += 2168;
      }

      while (v5 != v4);
    }

    free(v16);
  }

  else
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v18 = 42;
      v19 = 2080;
      v20 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = getDIOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v18 = 42;
        v19 = 2080;
        v20 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_ERROR, "%.*s: Failed getting mounts list", buf, 0x12u);
      }
    }

    *__error() = v10;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)newEntityDictWithIOMedia:(id)a3 mountPoints:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 BSDName];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CBEB38];
    v16 = @"BSD Name";
    v17[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 dictionaryWithDictionary:v10];

    v12 = [v6 objectForKeyedSubscript:v8];
    [v11 setObject:v12 forKeyedSubscript:@"Mount Point"];

    v13 = [v5 copyPropertyWithClass:objc_opt_class() key:@"Content"];
    [v11 setObject:v13 forKeyedSubscript:@"Content"];
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)copyEntitiesList
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[DIAttachedDeviceInfo copyAllMountPoints];
  v5 = [(DIAttachedDeviceInfo *)self ioMedia];
  v6 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:v5 mountPoints:v4];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [(DIAttachedDeviceInfo *)self ioMedia];
  v8 = [v7 newIteratorWithOptions:1 error:0];

  if (v8)
  {
    v9 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];
    if (v9)
    {
      v10 = v9;
      do
      {
        if ([v8 startedOver])
        {
          [v3 removeAllObjects];
          [v8 setStartedOver:0];
        }

        if (IOObjectConformsTo([(DIIOObject *)v10 ioObj], "IOMedia"))
        {
          v11 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:v10 mountPoints:v4];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }

        v12 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];

        v10 = v12;
      }

      while (v12);
    }
  }

  return v3;
}

- (id)toDictionary
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v24[0] = @"BSD Name";
  v23 = [(DIAttachedDeviceInfo *)self BSDName];
  v25[0] = v23;
  v24[1] = @"DiskImages Framework";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DIAttachedDeviceInfo frameworkNum](self, "frameworkNum")}];
  v25[1] = v4;
  v24[2] = @"DiskImageURL";
  v5 = [(DIAttachedDeviceInfo *)self imageURL];
  v6 = [v5 description];
  v25[2] = v6;
  v24[3] = @"Size";
  v7 = [(DIAttachedDeviceInfo *)self mediaSize];
  v25[3] = v7;
  v24[4] = @"Preferred Block Size";
  v8 = [(DIAttachedDeviceInfo *)self blockSize];
  v25[4] = v8;
  v24[5] = @"System Entities";
  v9 = [(DIAttachedDeviceInfo *)self copyEntitiesList];
  v25[5] = v9;
  v24[6] = @"Daemon PID";
  v10 = [(DIAttachedDeviceInfo *)self pid];
  v25[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
  v12 = [v3 dictionaryWithDictionary:v11];

  v13 = [(DIAttachedDeviceInfo *)self shadowURL];

  if (v13)
  {
    v14 = [(DIAttachedDeviceInfo *)self shadowURL];
    v15 = [v14 description];
    [v12 setObject:v15 forKeyedSubscript:@"ShadowURL"];
  }

  v16 = [(DIAttachedDeviceInfo *)self cacheURL];

  if (v16)
  {
    v17 = [(DIAttachedDeviceInfo *)self cacheURL];
    v18 = [v17 description];
    [v12 setObject:v18 forKeyedSubscript:@"CacheURL"];
  }

  v19 = [(DIAttachedDeviceInfo *)self instanceId];

  if (v19)
  {
    v20 = [(DIAttachedDeviceInfo *)self instanceId];
    [v12 setObject:v20 forKeyedSubscript:@"InstanceID"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

@end