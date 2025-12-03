@interface XRVMRegion
+ (unint64_t)regionIndexInArray:(id)array forAddress:(unint64_t)address;
+ (void)initialize;
- (BOOL)isAdjacentTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)regionMatch:(id)match;
- (BOOL)typeMatches:(id)matches;
- (XRVMRegion)initWithAddress:(unint64_t)address size:(unint64_t)size regionInfo:(vm_region_submap_info_64 *)info;
- (XRVMRegion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayPath;
- (id)displayType;
- (int)currentProtection;
- (int)maxProtection;
- (unint64_t)virtualSize;
- (unsigned)virtualPages;
- (void)_setResident:(unsigned int)resident dirty:(unsigned int)dirty swapped:(unsigned int)swapped speculative:(unsigned int)speculative;
- (void)encodeWithCoder:(id)coder;
- (void)setPath:(id)path type:(id)type;
@end

@implementation XRVMRegion

+ (unint64_t)regionIndexInArray:(id)array forAddress:(unint64_t)address
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy)
  {
    Count = CFArrayGetCount(arrayCopy);
    v8 = Count - 1;
    if (Count >= 1)
    {
      v9 = Count;
      v10 = CFArrayGetValueAtIndex(v6, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue = [v10 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = v10[1];
      }

      if (unsignedLongLongValue <= address)
      {
        v10 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue2 = [v10 unsignedLongLongValue];
        }

        else
        {
          v14 = v10[1];
          v15 = v10[2];

          unsignedLongLongValue2 = v15 + v14;
        }

        if (unsignedLongLongValue2 > address)
        {
          v12 = 0;
          goto LABEL_14;
        }

        v17 = CFArrayGetValueAtIndex(v6, v8);

        v10 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue3 = [v10 unsignedLongLongValue];
        }

        else
        {
          v19 = v10[1];
          v20 = v10[2];

          unsignedLongLongValue3 = v20 + v19;
        }

        if (unsignedLongLongValue3 > address)
        {
          v10 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedLongLongValue4 = [v10 unsignedLongLongValue];
          }

          else
          {
            unsignedLongLongValue4 = v10[1];
          }

          if (unsignedLongLongValue4 <= address)
          {
            v12 = v8;
            goto LABEL_14;
          }

          if (v9 >= 3)
          {
            v22 = 0;
            v23 = v10;
            while (1)
            {
              v12 = (v8 + v22) >> 1;
              v24 = CFArrayGetValueAtIndex(v6, v12);

              v23 = v24;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                unsignedLongLongValue5 = [v23 unsignedLongLongValue];
              }

              else
              {
                unsignedLongLongValue5 = v23[1];
              }

              if (unsignedLongLongValue5 <= address)
              {
                v10 = v23;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  unsignedLongLongValue6 = [v10 unsignedLongLongValue];
                }

                else
                {
                  v27 = v10[1];
                  v28 = v10[2];

                  unsignedLongLongValue6 = v28 + v27;
                }

                v22 = v12;
                if (unsignedLongLongValue6 > address)
                {
                  goto LABEL_14;
                }
              }

              else
              {
                v8 = (v8 + v22) >> 1;
              }

              v12 = 0x7FFFFFFFFFFFFFFFLL;
              v10 = v23;
              if ((v8 - v22) <= 1)
              {
                goto LABEL_14;
              }
            }
          }
        }
      }

      v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

      goto LABEL_15;
    }
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:

  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x2821F9670](self, sel_setVersion_);
  }
}

- (XRVMRegion)initWithAddress:(unint64_t)address size:(unint64_t)size regionInfo:(vm_region_submap_info_64 *)info
{
  v12.receiver = self;
  v12.super_class = XRVMRegion;
  result = [(XRVMRegion *)&v12 init];
  if (result)
  {
    result->start = address;
    result->length = size;
    result->current_prot = info->protection;
    result->max_prot = info->max_protection;
    result->external_pager = info->external_pager;
    result->share_mode = info->share_mode;
    result->user_tag = info->user_tag;
    v9 = MEMORY[0x277D85F70];
    result->is_submap = info->is_submap != 0;
    if (*v9 >= *MEMORY[0x277D85F88])
    {
      v10 = MEMORY[0x277D85F90];
    }

    else
    {
      v10 = MEMORY[0x277D85F78];
    }

    result->region_page_shift = *v10;
    result->pages_resident = info->pages_resident;
    result->pages_dirtied = info->pages_dirtied;
    result->pages_swapped_out = info->pages_swapped_out;
    result->pages_shared_now_private = info->pages_shared_now_private;
    v11 = *MEMORY[0x277D85F80];
    if (*MEMORY[0x277D85F80] >= *MEMORY[0x277D85FA0])
    {
      v11 = *MEMORY[0x277D85FA0];
    }

    result->_pageSize = v11;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->start;
  *(result + 2) = self->length;
  *(result + 6) = self->current_prot;
  *(result + 7) = self->max_prot;
  *(result + 32) = self->external_pager;
  *(result + 33) = self->share_mode;
  *(result + 34) = self->user_tag;
  *(result + 35) = self->is_submap;
  *(result + 19) = self->region_page_shift;
  *(result + 10) = self->_pageSize;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    region_page_shift = self->region_page_shift;
    ref_count = self->ref_count;
    pages_dirtied = self->pages_dirtied;
    pages_swapped_out = self->pages_swapped_out;
    pages_shared_now_private = self->pages_shared_now_private;
    pages_resident = self->pages_resident;
    v8 = bswap32(*&self->external_pager);
    max_prot = self->max_prot;
    current_prot = self->current_prot;
    length = self->length;
    start = self->start;
    DTXPrimitiveArrayCreateWithTypesAndValues();
    [coderCopy encodeBytes:DTXPrimitiveArrayGetSerialized() length:0 forKey:{@"dataList", start, 6, length, 3, current_prot, 3, max_prot, 3, v8, 3, pages_resident, 3, pages_shared_now_private, 3, pages_swapped_out, 3, pages_dirtied, 3, ref_count, 3, region_page_shift, 0}];
    DTXPrimitiveArrayDestroy();
    [coderCopy encodeObject:self->path forKey:@"path"];
    [coderCopy encodeObject:self->type forKey:@"type"];
  }

  else
  {
    [coderCopy encodeValueOfObjCType:"Q" at:&self->start];
    [coderCopy encodeValueOfObjCType:"Q" at:&self->length];
    [coderCopy encodeValueOfObjCType:"i" at:&self->current_prot];
    [coderCopy encodeValueOfObjCType:"i" at:&self->max_prot];
    [coderCopy encodeValueOfObjCType:"C" at:&self->external_pager];
    [coderCopy encodeValueOfObjCType:"C" at:&self->share_mode];
    [coderCopy encodeValueOfObjCType:"C" at:&self->user_tag];
    [coderCopy encodeValueOfObjCType:"B" at:&self->is_submap];
    [coderCopy encodeValueOfObjCType:"I" at:&self->pages_resident];
    [coderCopy encodeValueOfObjCType:"I" at:&self->pages_shared_now_private];
    [coderCopy encodeValueOfObjCType:"I" at:&self->pages_swapped_out];
    [coderCopy encodeValueOfObjCType:"I" at:&self->pages_dirtied];
    [coderCopy encodeValueOfObjCType:"I" at:&self->ref_count];
    [coderCopy encodeValueOfObjCType:"I" at:&self->region_page_shift];
    [coderCopy encodeObject:self->path];
    [coderCopy encodeObject:self->type];
    [coderCopy encodeObject:0];
  }
}

- (XRVMRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v22 = 0;
      [v5 decodeBytesForKey:@"dataList" returnedLength:&v22];
      DTXPrimitiveArrayReferencingSerialized();
      v6 = CFArrayCreateWithDTXPrimitiveArray();
      self->start = [CFArrayGetValueAtIndex(v6 0)];
      self->length = [CFArrayGetValueAtIndex(v6 1)];
      self->current_prot = [CFArrayGetValueAtIndex(v6 2)];
      self->max_prot = [CFArrayGetValueAtIndex(v6 3)];
      v7 = [CFArrayGetValueAtIndex(v6 4)];
      self->external_pager = HIBYTE(v7);
      self->share_mode = BYTE2(v7);
      self->user_tag = BYTE1(v7);
      self->is_submap = v7 != 0;
      self->pages_resident = [CFArrayGetValueAtIndex(v6 5)];
      self->pages_shared_now_private = [CFArrayGetValueAtIndex(v6 6)];
      self->pages_swapped_out = [CFArrayGetValueAtIndex(v6 7)];
      self->pages_dirtied = [CFArrayGetValueAtIndex(v6 8)];
      self->ref_count = [CFArrayGetValueAtIndex(v6 9)];
      if (CFArrayGetCount(v6) < 11)
      {
        if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
        {
          v9 = MEMORY[0x277D85F90];
        }

        else
        {
          v9 = MEMORY[0x277D85F78];
        }

        v8 = *v9;
      }

      else
      {
        v8 = [CFArrayGetValueAtIndex(v6 10)];
      }

      self->region_page_shift = v8;
      CFRelease(v6);
      v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
      path = self->path;
      self->path = v10;

      v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
      type = self->type;
      self->type = v12;
    }

    else
    {
      [v5 decodeValueOfObjCType:"Q" at:&self->start size:8];
      [v5 decodeValueOfObjCType:"Q" at:&self->length size:8];
      [v5 decodeValueOfObjCType:"i" at:&self->current_prot size:4];
      [v5 decodeValueOfObjCType:"i" at:&self->max_prot size:4];
      [v5 decodeValueOfObjCType:"C" at:&self->external_pager size:1];
      [v5 decodeValueOfObjCType:"C" at:&self->share_mode size:1];
      [v5 decodeValueOfObjCType:"C" at:&self->user_tag size:1];
      [v5 decodeValueOfObjCType:"B" at:&self->is_submap size:1];
      [v5 decodeValueOfObjCType:"I" at:&self->pages_resident size:4];
      [v5 decodeValueOfObjCType:"I" at:&self->pages_shared_now_private size:4];
      [v5 decodeValueOfObjCType:"I" at:&self->pages_swapped_out size:4];
      [v5 decodeValueOfObjCType:"I" at:&self->pages_dirtied size:4];
      [v5 decodeValueOfObjCType:"I" at:&self->ref_count size:4];
      if ([v5 versionForClassName:@"XRVMRegion"] < 2)
      {
        if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
        {
          v14 = MEMORY[0x277D85F90];
        }

        else
        {
          v14 = MEMORY[0x277D85F78];
        }

        self->region_page_shift = *v14;
      }

      else
      {
        [v5 decodeValueOfObjCType:"I" at:&self->region_page_shift size:4];
      }

      decodeObject = [v5 decodeObject];
      v16 = self->path;
      self->path = decodeObject;

      decodeObject2 = [v5 decodeObject];
      v18 = self->type;
      self->type = decodeObject2;

      decodeObject3 = [v5 decodeObject];
    }

    v20 = *MEMORY[0x277D85F80];
    if (*MEMORY[0x277D85F80] >= *MEMORY[0x277D85FA0])
    {
      v20 = *MEMORY[0x277D85FA0];
    }

    self->_pageSize = v20;
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = XRVMRegion;
  v4 = [(XRVMRegion *)&v10 description];
  displayType = [(XRVMRegion *)self displayType];
  v6 = displayType;
  path = self->path;
  if (!path)
  {
    if (self->is_submap)
    {
      path = @"(submap)";
    }

    else
    {
      path = &stru_285A19CB8;
    }
  }

  path = [v3 stringWithFormat:@"%@  %16@ %#16llx-%#16llx %1x/%1x %@", v4, displayType, self->start, self->length + self->start, self->current_prot, self->max_prot, path];

  return path;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = XRVMRegion;
    v9 = [(XRVMRegion *)&v11 isEqual:equalCopy];
    goto LABEL_20;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->start == v5->start && self->length == v5->length && self->current_prot == v5->current_prot && self->max_prot == v5->max_prot && self->user_tag == v5->user_tag && self->pages_resident == v5->pages_resident && self->pages_shared_now_private == v5->pages_shared_now_private && self->pages_swapped_out == v5->pages_swapped_out && self->pages_dirtied == v5->pages_dirtied)
  {
    path = self->path;
    if (!path)
    {
      v9 = 1;
      goto LABEL_17;
    }

    v8 = v6->path;
    v9 = 1;
    if (!v8 || path == v8 || [(NSString *)path isEqualToString:?])
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
LABEL_17:

LABEL_20:
  return v9;
}

- (BOOL)regionMatch:(id)match
{
  matchCopy = match;
  v5 = matchCopy;
  v6 = *&self->start == *(matchCopy + 8) && [(XRVMRegion *)self typeMatches:matchCopy];

  return v6;
}

- (BOOL)typeMatches:(id)matches
{
  matchesCopy = matches;
  v5 = matchesCopy;
  v10 = 0;
  if (matchesCopy)
  {
    if (self->current_prot == *(matchesCopy + 6) && self->max_prot == *(matchesCopy + 7) && self->user_tag == *(matchesCopy + 34) && self->external_pager == *(matchesCopy + 32))
    {
      type = self->type;
      if (!type || (v7 = v5[6]) == 0 || type == v7 || [(NSString *)type isEqualToString:?])
      {
        path = self->path;
        if (!path || (v9 = v5[5]) == 0 || path == v9 || [(NSString *)path isEqualToString:?])
        {
          v10 = 1;
        }
      }
    }
  }

  return v10;
}

- (BOOL)isAdjacentTo:(id)to
{
  if (!to)
  {
    return 0;
  }

  start = self->start;
  v4 = *(to + 1);
  return start == *(to + 2) + v4 || self->length + start == v4;
}

- (void)setPath:(id)path type:(id)type
{
  pathCopy = path;
  typeCopy = type;
  path = self->path;
  if (!path || ![(NSString *)path isEqualToString:pathCopy])
  {
    v8 = [pathCopy copy];
    v9 = self->path;
    self->path = v8;
  }

  type = self->type;
  if (!type || ![(NSString *)type isEqualToString:typeCopy])
  {
    v11 = [typeCopy copy];
    v12 = self->type;
    self->type = v11;
  }
}

- (void)_setResident:(unsigned int)resident dirty:(unsigned int)dirty swapped:(unsigned int)swapped speculative:(unsigned int)speculative
{
  self->pages_resident = resident;
  self->pages_swapped_out = swapped;
  self->pages_dirtied = dirty;
}

- (unint64_t)virtualSize
{
  v2 = *MEMORY[0x277D85F70];
  if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
  {
    v2 = *MEMORY[0x277D85F88];
  }

  return (v2 + self->length) & ~v2;
}

- (unsigned)virtualPages
{
  v2 = *MEMORY[0x277D85F70];
  if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
  {
    v2 = *MEMORY[0x277D85F88];
  }

  return ((v2 + self->length) & ~v2) / self->_pageSize;
}

- (int)currentProtection
{
  current_prot = self->current_prot;
  if (current_prot >= 7)
  {
    current_prot = 7;
  }

  return current_prot & ~(current_prot >> 31);
}

- (int)maxProtection
{
  max_prot = self->max_prot;
  if (max_prot >= 7)
  {
    max_prot = 7;
  }

  return max_prot & ~(max_prot >> 31);
}

- (id)displayType
{
  type = self->type;
  if (type)
  {
    v3 = type;
  }

  else
  {
    user_tag = self->user_tag;
    share_mode = self->share_mode;
    current_prot = self->current_prot;
    external_pager = self->external_pager;
    v3 = VMURegionTypeDescriptionForTagShareProtAndPager();
  }

  return v3;
}

- (id)displayPath
{
  if (self->path)
  {
    return self->path;
  }

  else
  {
    return &stru_285A19CB8;
  }
}

@end