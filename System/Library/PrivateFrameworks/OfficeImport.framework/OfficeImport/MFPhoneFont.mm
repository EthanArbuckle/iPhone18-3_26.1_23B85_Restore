@interface MFPhoneFont
- (__CTFont)createCTFontEquivalent;
@end

@implementation MFPhoneFont

- (__CTFont)createCTFontEquivalent
{
  if (![MFPhoneFont createCTFontEquivalent]::familiesAvailable)
  {
    v3 = TCFontFamilyNames();
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
    v5 = [MFPhoneFont createCTFontEquivalent]::familiesAvailable;
    [MFPhoneFont createCTFontEquivalent]::familiesAvailable = v4;
  }

  v6 = self->super.m_lfFaceName;
  if ([(NSString *)self->super.m_lfFaceName isEqualToString:@"ZapfDingbats"])
  {

    v6 = @"Zapf Dingbats";
  }

  if (-[__CFString length](v6, "length") && ([-[MFPhoneFont createCTFontEquivalent]::familiesAvailable containsObject:v6] & 1) != 0)
  {
    goto LABEL_7;
  }

  m_lfCharSet = self->super.m_lfCharSet;
  if (m_lfCharSet <= 160)
  {
    if (m_lfCharSet > 128)
    {
      if (m_lfCharSet > 133)
      {
        if (m_lfCharSet == 134)
        {

          v6 = @"Heiti SC";
        }

        else if (m_lfCharSet == 136)
        {

          v6 = @"Heiti TC";
        }
      }

      else if (m_lfCharSet == 129 || m_lfCharSet == 130)
      {

        v6 = @"Heiti K";
      }

      goto LABEL_7;
    }

    if (m_lfCharSet >= 2 && m_lfCharSet != 77)
    {
      if (m_lfCharSet == 128)
      {

        v6 = @"Heiti J";
      }

      goto LABEL_7;
    }

    goto LABEL_35;
  }

  if (m_lfCharSet <= 185)
  {
    if ((m_lfCharSet - 161) >= 3)
    {
      if (m_lfCharSet == 177)
      {

        v6 = @"Arial Hebrew";
      }

      else if (m_lfCharSet == 178)
      {

        v6 = @"Gill Sans";
      }

      goto LABEL_7;
    }

    goto LABEL_35;
  }

  if (m_lfCharSet <= 221)
  {
    if (m_lfCharSet != 186 && m_lfCharSet != 204)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

  if (m_lfCharSet == 222)
  {

    v6 = @"Thonburi";
    goto LABEL_7;
  }

  if (m_lfCharSet == 238 || m_lfCharSet == 255)
  {
LABEL_35:
    HIDWORD(v12) = self->super.m_family;
    LODWORD(v12) = HIDWORD(v12);
    v11 = v12 >> 4;
    if (v11 <= 2)
    {
      if (v11 == 1)
      {

        v6 = @"Times New Roman";
        goto LABEL_7;
      }

      if (v11 == 2)
      {

        v6 = @"Helvetica";
        goto LABEL_7;
      }
    }

    else
    {
      switch(v11)
      {
        case 3:

          v6 = @"Courier New";
          goto LABEL_7;
        case 4:

          v6 = @"Noteworthy";
          goto LABEL_7;
        case 5:

          v6 = @"Marker Felt";
          goto LABEL_7;
      }
    }

    m_pitch = self->super.m_pitch;

    if (m_pitch == 1)
    {
      v6 = @"Courier New";
    }

    else
    {
      v6 = @"Helvetica";
    }
  }

LABEL_7:
  m_lfHeight = self->super.m_lfHeight;
  if (m_lfHeight < 0)
  {
    m_lfHeight = -m_lfHeight;
  }

  v8 = TCCreateFontWithFamilyName(v6, self->super.m_lfWeight > 400, self->super.m_lfItalic, m_lfHeight);

  return v8;
}

@end