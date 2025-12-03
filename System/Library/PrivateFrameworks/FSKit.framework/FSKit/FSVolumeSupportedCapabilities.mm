@interface FSVolumeSupportedCapabilities
- (BOOL)isEqual:(id)equal;
- (FSVolumeSupportedCapabilities)initWithCoder:(id)coder;
- (unint64_t)capabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSVolumeSupportedCapabilities

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FSVolumeSupportedCapabilities capabilities](self forKey:{"capabilities"), @"FSKitSupportedCapabilities"}];
}

- (FSVolumeSupportedCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FSVolumeSupportedCapabilities;
  v5 = [(FSVolumeSupportedCapabilities *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"FSKitSupportedCapabilities"];
    v5[8] = v6 & 1;
    v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    *(v5 + 9) = vuzp1_s8(v7, v7).u32[0];
    v5[14] = (v6 & 0x40) != 0;
    v5[15] = (v6 & 0x80) != 0;
    v5[25] = (v6 & 0x800000) != 0;
    v5[26] = BYTE3(v6) & 1;
    v5[13] = (v6 & 0x20) != 0;
    v8 = vdupq_n_s64(v6);
    *(v5 + 2) = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v8, xmmword_24A970F80), vshlq_u64(v8, xmmword_24A970F70)), vuzp1q_s32(vshlq_u64(v8, xmmword_24A970FA0), vshlq_u64(v8, xmmword_24A970F90)))), 0x101010101010101);
    v5[24] = (v6 & 0x400000) != 0;
    if ((v6 & 0x100) != 0)
    {
      *(v5 + 4) = 0;
    }

    else
    {
      if ((v6 & 0x200) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      *(v5 + 4) = v9;
    }
  }

  return v5;
}

- (unint64_t)capabilities
{
  supportsPersistentObjectIDs = self->_supportsPersistentObjectIDs;
  if (self->_supportsSymbolicLinks)
  {
    supportsPersistentObjectIDs |= 2uLL;
  }

  if (self->_supportsHardLinks)
  {
    supportsPersistentObjectIDs |= 4uLL;
  }

  if (self->_supportsJournal)
  {
    supportsPersistentObjectIDs |= 8uLL;
  }

  if (self->_supportsActiveJournal)
  {
    supportsPersistentObjectIDs |= 0x10uLL;
  }

  if (self->_supportsSparseFiles)
  {
    supportsPersistentObjectIDs |= 0x40uLL;
  }

  if (self->_supportsZeroRuns)
  {
    supportsPersistentObjectIDs |= 0x80uLL;
  }

  if (self->_supportsFastStatFS)
  {
    supportsPersistentObjectIDs |= 0x400uLL;
  }

  if (self->_supports2TBFiles)
  {
    supportsPersistentObjectIDs |= 0x800uLL;
  }

  if (self->_supportsOpenDenyModes)
  {
    supportsPersistentObjectIDs |= 0x1000uLL;
  }

  if (self->_supportsHiddenFiles)
  {
    supportsPersistentObjectIDs |= 0x2000uLL;
  }

  if (self->_supports64BitObjectIDs)
  {
    supportsPersistentObjectIDs |= 0x20000uLL;
  }

  if (self->_supportsDocumentID)
  {
    supportsPersistentObjectIDs |= 0x80000uLL;
  }

  if (self->_supportsSharedSpace)
  {
    supportsPersistentObjectIDs |= 0x800000uLL;
  }

  if (self->_supportsVolumeGroups)
  {
    supportsPersistentObjectIDs |= 0x1000000uLL;
  }

  if (self->_doesNotSupportVolumeSizes)
  {
    supportsPersistentObjectIDs |= 0x8000uLL;
  }

  if (self->_doesNotSupportRootTimes)
  {
    supportsPersistentObjectIDs |= 0x20uLL;
  }

  if (self->_doesNotSupportImmutableFiles)
  {
    supportsPersistentObjectIDs |= 0x200000uLL;
  }

  if (self->_doesNotSupportSettingFilePermissions)
  {
    supportsPersistentObjectIDs |= 0x400000uLL;
  }

  caseFormat = self->_caseFormat;
  v4 = supportsPersistentObjectIDs | 0x100;
  if (caseFormat)
  {
    v4 = supportsPersistentObjectIDs;
  }

  if (caseFormat == 2 || caseFormat == 0)
  {
    return v4 | 0x200;
  }

  else
  {
    return supportsPersistentObjectIDs;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    doesNotSupportRootTimes = [(FSVolumeSupportedCapabilities *)self doesNotSupportRootTimes];
    if (doesNotSupportRootTimes != [(FSVolumeSupportedCapabilities *)v6 doesNotSupportRootTimes])
    {
      goto LABEL_23;
    }

    doesNotSupportSettingFilePermissions = [(FSVolumeSupportedCapabilities *)self doesNotSupportSettingFilePermissions];
    if (doesNotSupportSettingFilePermissions != [(FSVolumeSupportedCapabilities *)v6 doesNotSupportSettingFilePermissions])
    {
      goto LABEL_23;
    }

    supportsSymbolicLinks = [(FSVolumeSupportedCapabilities *)self supportsSymbolicLinks];
    if (supportsSymbolicLinks != [(FSVolumeSupportedCapabilities *)v6 supportsSymbolicLinks])
    {
      goto LABEL_23;
    }

    supportsHardLinks = [(FSVolumeSupportedCapabilities *)self supportsHardLinks];
    if (supportsHardLinks != [(FSVolumeSupportedCapabilities *)v6 supportsHardLinks])
    {
      goto LABEL_23;
    }

    supports64BitObjectIDs = [(FSVolumeSupportedCapabilities *)self supports64BitObjectIDs];
    if (supports64BitObjectIDs != [(FSVolumeSupportedCapabilities *)v6 supports64BitObjectIDs])
    {
      goto LABEL_23;
    }

    supportsDocumentID = [(FSVolumeSupportedCapabilities *)self supportsDocumentID];
    if (supportsDocumentID != [(FSVolumeSupportedCapabilities *)v6 supportsDocumentID])
    {
      goto LABEL_23;
    }

    supportsFastStatFS = [(FSVolumeSupportedCapabilities *)self supportsFastStatFS];
    if (supportsFastStatFS != [(FSVolumeSupportedCapabilities *)v6 supportsFastStatFS])
    {
      goto LABEL_23;
    }

    doesNotSupportImmutableFiles = [(FSVolumeSupportedCapabilities *)self doesNotSupportImmutableFiles];
    if (doesNotSupportImmutableFiles != [(FSVolumeSupportedCapabilities *)v6 doesNotSupportImmutableFiles])
    {
      goto LABEL_23;
    }

    supportsJournal = [(FSVolumeSupportedCapabilities *)self supportsJournal];
    if (supportsJournal != [(FSVolumeSupportedCapabilities *)v6 supportsJournal])
    {
      goto LABEL_23;
    }

    supportsActiveJournal = [(FSVolumeSupportedCapabilities *)self supportsActiveJournal];
    if (supportsActiveJournal != [(FSVolumeSupportedCapabilities *)v6 supportsActiveJournal])
    {
      goto LABEL_23;
    }

    supportsOpenDenyModes = [(FSVolumeSupportedCapabilities *)self supportsOpenDenyModes];
    if (supportsOpenDenyModes != [(FSVolumeSupportedCapabilities *)v6 supportsOpenDenyModes])
    {
      goto LABEL_23;
    }

    supportsPersistentObjectIDs = [(FSVolumeSupportedCapabilities *)self supportsPersistentObjectIDs];
    if (supportsPersistentObjectIDs != [(FSVolumeSupportedCapabilities *)v6 supportsPersistentObjectIDs])
    {
      goto LABEL_23;
    }

    supportsSharedSpace = [(FSVolumeSupportedCapabilities *)self supportsSharedSpace];
    if (supportsSharedSpace == [(FSVolumeSupportedCapabilities *)v6 supportsSharedSpace]&& (v20 = [(FSVolumeSupportedCapabilities *)self supportsSparseFiles], v20 == [(FSVolumeSupportedCapabilities *)v6 supportsSparseFiles]) && (v21 = [(FSVolumeSupportedCapabilities *)self supportsVolumeGroups], v21 == [(FSVolumeSupportedCapabilities *)v6 supportsVolumeGroups]) && (v22 = [(FSVolumeSupportedCapabilities *)self doesNotSupportVolumeSizes], v22 == [(FSVolumeSupportedCapabilities *)v6 doesNotSupportVolumeSizes]) && (v23 = [(FSVolumeSupportedCapabilities *)self supportsVolumeGroups], v23 == [(FSVolumeSupportedCapabilities *)v6 supportsVolumeGroups]) && (v24 = [(FSVolumeSupportedCapabilities *)self supportsZeroRuns], v24 == [(FSVolumeSupportedCapabilities *)v6 supportsZeroRuns]) && (v25 = [(FSVolumeSupportedCapabilities *)self supports2TBFiles], v25 == [(FSVolumeSupportedCapabilities *)v6 supports2TBFiles]))
    {
      caseFormat = [(FSVolumeSupportedCapabilities *)self caseFormat];
      v26 = caseFormat == [(FSVolumeSupportedCapabilities *)v6 caseFormat];
    }

    else
    {
LABEL_23:
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end