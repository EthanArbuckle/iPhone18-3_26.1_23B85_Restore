@interface CECMessage
+ (id)abortFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)activeSourceFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4;
+ (id)cecVersion:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)deckControlWithMode:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)deckStatusWithInfo:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)deviceVendorID:(unsigned int)a3 from:(unsigned __int8)a4;
+ (id)featureAbort:(unsigned __int8)a3 reason:(unsigned __int8)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6;
+ (id)getCECVersionFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)getMenuLanguageFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)giveAudioStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)giveDeckStatusWithRequest:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)giveDevicePowerStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)giveDeviceVendorIDFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)giveOSDNameFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)givePhysicalAddressFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)giveSystemAudioModeStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)imageViewOnFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)inactiveSourceFrom:(unsigned __int8)a3 to:(unsigned __int8)a4 physicalAddress:(unsigned __int16)a5;
+ (id)initiateARCFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)menuStatus:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)messageWithFrame:(CECFrame *)a3;
+ (id)playWithMode:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)pollFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)reportAudioStatusWithVolume:(unint64_t)a3 mute:(BOOL)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6;
+ (id)reportFeaturesWith:(unsigned __int8)a3 deviceTypes:(unsigned __int8)a4 rcProfile:(id)a5 deviceFeatures:(unsigned __int8)a6 from:(unsigned __int8)a7;
+ (id)reportPhysicalAddress:(unsigned __int16)a3 deviceType:(unsigned __int8)a4 from:(unsigned __int8)a5;
+ (id)reportPowerStatus:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)reportShortAudioDescriptor:(char *)a3 length:(unsigned __int8)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6;
+ (id)requestActiveSourceFrom:(unsigned __int8)a3;
+ (id)routingChangeFrom:(unsigned __int8)a3 originalAddress:(unsigned __int16)a4 newAddress:(unsigned __int16)a5;
+ (id)routingInformationFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4;
+ (id)setAudioVolumeLevel:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)setMenuLanguage:(CECLanguage)a3 from:(unsigned __int8)a4;
+ (id)setOSDName:(CECOSDName)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)setStreamPathFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4;
+ (id)setSystemAudioMode:(BOOL)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)standbyFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)systemAudioModeStatus:(unint64_t)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)terminateARCFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)textViewOnFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
+ (id)userControlPressed:(CECUserControl)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5;
+ (id)userControlReleasedFrom:(unsigned __int8)a3 to:(unsigned __int8)a4;
- (BOOL)parseActiveSourcePhysicalAddress:(unsigned __int16 *)a3;
- (BOOL)parseCECVersion:(unsigned __int8 *)a3;
- (BOOL)parseDeckControlMode:(unint64_t *)a3;
- (BOOL)parseDeckStatusInfo:(unint64_t *)a3;
- (BOOL)parseDeviceVendorID:(unsigned int *)a3;
- (BOOL)parseFeatureAbortOpcode:(char *)a3 reason:(unsigned __int8 *)a4;
- (BOOL)parseGiveDeckStatusRequest:(unsigned __int8 *)a3;
- (BOOL)parseInactiveSourcePhysicalAddress:(unsigned __int16 *)a3;
- (BOOL)parseMenuRequest:(unsigned __int8 *)a3;
- (BOOL)parsePlayMode:(unint64_t *)a3;
- (BOOL)parseReportAudioStatus:(unint64_t *)a3 muteStatus:(BOOL *)a4;
- (BOOL)parseReportFeatures:(unsigned __int8 *)a3 deviceTypes:(char *)a4 rcProfile:(id *)a5 features:(char *)a6;
- (BOOL)parseReportPhysicalAddress:(unsigned __int16 *)a3 deviceType:(unint64_t *)a4;
- (BOOL)parseReportPowerStatus:(unint64_t *)a3;
- (BOOL)parseRoutingChangeOriginalAddress:(unsigned __int16 *)a3 newAddress:(unsigned __int16 *)a4;
- (BOOL)parseRoutingInformationPhysicalAddress:(unsigned __int16 *)a3;
- (BOOL)parseSetMenuLanguage:(CECLanguage *)a3;
- (BOOL)parseSetOSDName:(id *)a3;
- (BOOL)parseSetStreamPathPhysicalAddress:(unsigned __int16 *)a3;
- (BOOL)parseSystemAudioModeStatus:(unint64_t *)a3;
- (BOOL)parseUserControlPressed:(CECUserControl *)a3;
- (BOOL)shouldBeIgnored;
- (CECMessage)initWithCoder:(id)a3;
- (CECMessage)initWithFrame:(CECFrame *)a3;
- (const)_operandsWithLength:(unsigned __int8)a3;
- (id)debugDescription;
- (id)description;
- (int)messageType;
- (unsigned)_operandsLength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CECMessage

- (CECMessage)initWithFrame:(CECFrame *)a3
{
  result = [(CECMessage *)self init];
  if (result)
  {
    if ((*(a3 + 16) & 0x1Fu) - 17 < 0xFFFFFFF0)
    {

      return 0;
    }

    else
    {
      v5 = *a3->blocks;
      *(&result->_frame + 4) = *(a3 + 4);
      *result->_frame.blocks = v5;
    }
  }

  return result;
}

- (CECMessage)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CECMessage;
  v4 = [(CECMessage *)&v7 init];
  if (v4)
  {
    v5 = [a3 decodeIntForKey:@"length"];
    *(&v4->_frame + 16) = *(&v4->_frame + 16) & 0xE0 | v5 & 0x1F;
    [a3 decodeArrayOfObjCType:"C" count:v5 & 0x1F at:&v4->_frame];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:*(&self->_frame + 16) & 0x1F forKey:@"length"];
  v5 = *(&self->_frame + 16) & 0x1F;

  [a3 encodeArrayOfObjCType:"C" count:v5 at:&self->_frame];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = CECMessage;
  return [-[CECMessage description](&v3 description)];
}

- (int)messageType
{
  if ((*(&self->_frame + 16) & 0x1E) != 0)
  {
    return self->_frame.blocks[1];
  }

  else
  {
    return -1;
  }
}

- (unsigned)_operandsLength
{
  v2 = *(&self->_frame + 16) & 0x1F;
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (const)_operandsWithLength:(unsigned __int8)a3
{
  if (a3 + 2 <= (*(&self->_frame + 16) & 0x1Fu))
  {
    return &self->_frame.blocks[2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldBeIgnored
{
  v3 = [(CECMessage *)self messageType];
  v4 = [(CECMessage *)self destination];
  v5 = [(CECMessage *)self initiator];
  if (v4 == 15)
  {
    if (v3 <= 113)
    {
      if (v3 != 50 && v3 != 54)
      {
        goto LABEL_25;
      }
    }

    else if (((v3 - 114) > 0x34 || ((1 << (v3 - 114)) & 0x104000433DC001) == 0) && v3 != 248)
    {
      goto LABEL_25;
    }
  }

  else if (v3 > 130)
  {
    if (((v3 - 131) > 0x22 || ((1 << (v3 + 125)) & 0x7FCD1FFC1) == 0) && ((v3 - 192) > 0x3F || ((1 << (v3 + 64)) & 0x800000000000003FLL) == 0))
    {
      goto LABEL_25;
    }
  }

  else if (((v3 + 1) > 0x37 || ((1 << (v3 + 1)) & 0xF0000018015FE3) == 0) && ((v3 - 65) > 0x3D || ((1 << (v3 - 65)) & 0x320780480000007FLL) == 0))
  {
    goto LABEL_25;
  }

  if (v5 != 15)
  {
    if (v3 == 50)
    {
      if (!v5)
      {
        return v5;
      }
    }

    else if (v3 != 255 || v4 != 15)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    goto LABEL_25;
  }

  LOBYTE(v5) = 0;
  if (((v3 - 128) > 0x11 || ((1 << (v3 + 0x80)) & 0x2103F) == 0) && v3 != 54 && v3 != 248)
  {
LABEL_25:
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)messageWithFrame:(CECFrame *)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [CECMessage alloc];
  v7 = *a3;
  result = [(CECMessage *)v4 initWithFrame:&v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)activeSourceFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v6[0] = (16 * a3) | 0xF;
  v6[1] = -126;
  v6[2] = HIBYTE(a4);
  v6[3] = a4;
  v7 = 0;
  v8 = 0;
  v9 = 4;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)imageViewOnFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = 4;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)textViewOnFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = 13;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)inactiveSourceFrom:(unsigned __int8)a3 to:(unsigned __int8)a4 physicalAddress:(unsigned __int16)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v7[0] = a4 | (16 * a3);
  v7[1] = -99;
  v7[2] = HIBYTE(a5);
  v7[3] = a5;
  v8 = 0;
  v9 = 0;
  v10 = 4;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)requestActiveSourceFrom:(unsigned __int8)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = (16 * a3) | 0xF;
  v5[1] = -123;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  result = [CECMessage messageWithFrame:v5];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)routingChangeFrom:(unsigned __int8)a3 originalAddress:(unsigned __int16)a4 newAddress:(unsigned __int16)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v7[0] = (16 * a3) | 0xF;
  v7[1] = 0x80;
  v7[2] = HIBYTE(a4);
  v7[3] = a4;
  v7[4] = HIBYTE(a5);
  v7[5] = a5;
  v8 = 0;
  v9 = 0;
  v10 = 6;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)routingInformationFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v6[0] = (16 * a3) | 0xF;
  v6[1] = -127;
  v6[2] = HIBYTE(a4);
  v6[3] = a4;
  v7 = 0;
  v8 = 0;
  v9 = 4;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)setStreamPathFrom:(unsigned __int8)a3 physicalAddress:(unsigned __int16)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v6[0] = (16 * a3) | 0xF;
  v6[1] = -122;
  v6[2] = HIBYTE(a4);
  v6[3] = a4;
  v7 = 0;
  v8 = 0;
  v9 = 4;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)standbyFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v6 = a4 | (16 * a3);
  strcpy(v7, "6");
  v7[2] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  result = [CECMessage messageWithFrame:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)cecVersion:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = -98;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getCECVersionFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -97;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)givePhysicalAddressFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -125;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getMenuLanguageFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -111;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)pollFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = a4 | (16 * a3);
  memset(&v6[1], 0, 15);
  v6[16] = 1;
  v7 = 0;
  v8 = 0;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)reportPhysicalAddress:(unsigned __int16)a3 deviceType:(unsigned __int8)a4 from:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = (16 * a5) | 0xF;
  v7[1] = -124;
  v7[2] = HIBYTE(a3);
  v7[3] = a3;
  v7[4] = a4;
  memset(&v7[5], 0, 11);
  v7[16] = 5;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)setMenuLanguage:(CECLanguage)a3 from:(unsigned __int8)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v6[0] = (16 * a4) | 0xF;
  v6[1] = 50;
  v7 = a3;
  memset(v8, 0, 11);
  v8[11] = 5;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)reportFeaturesWith:(unsigned __int8)a3 deviceTypes:(unsigned __int8)a4 rcProfile:(id)a5 deviceFeatures:(unsigned __int8)a6 from:(unsigned __int8)a7
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v9[0] = (16 * a7) | 0xF;
  v9[1] = -90;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = (a5.var0 << 6) | a5.var1.var0;
  v9[5] = a6;
  v10 = 0;
  v11 = 0;
  v12 = 6;
  result = [CECMessage messageWithFrame:v9];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)deckControlWithMode:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 66;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)deckStatusWithInfo:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 27;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveDeckStatusWithRequest:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 26;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)playWithMode:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 65;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)deviceVendorID:(unsigned int)a3 from:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = (16 * a4) | 0xF;
  v6[1] = -121;
  v6[2] = BYTE2(a3);
  v6[3] = BYTE1(a3);
  v6[4] = a3;
  memset(&v6[5], 0, 11);
  v6[16] = 5;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveDeviceVendorIDFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -116;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveOSDNameFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v6 = a4 | (16 * a3);
  strcpy(v7, "F");
  v7[2] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  result = [CECMessage messageWithFrame:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)setOSDName:(CECOSDName)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  length = a3.length;
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  LOBYTE(v10) = a5 | (16 * a4);
  *(&v10 + 1) = 16199;
  *(&v10 + 3) = 0;
  *(&v10 + 1) = 0;
  v11 = 3;
  if (a3.length)
  {
    __memcpy_chk();
    LOBYTE(v11) = v11 & 0xE0 | (length + 2) & 0x1F;
  }

  v8 = v10;
  v9 = v11;
  result = [CECMessage messageWithFrame:&v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)menuStatus:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = -114;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)userControlPressed:(CECUserControl)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v24 = *MEMORY[0x277D85DE8];
  playMode = a3.operand.playMode;
  if (a3.command <= 0x66u)
  {
    if (a3.command == 96)
    {
      v11 = a3.operand.playMode;
    }

    else
    {
      v11 = 0;
    }

    if (a3.command == 96)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    if (a3.command == 87)
    {
      v13 = a3.operand.playMode;
    }

    else
    {
      v13 = v11;
    }

    if (a3.command == 87)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    v15 = a3.command == 86;
  }

  else
  {
    if (a3.command <= 0x68u)
    {
      if (a3.command == 104)
      {
        v6 = 4;
      }

      else
      {
        playMode = 0;
        v6 = 3;
      }

      if (a3.command == 103)
      {
        playMode = (*&a3 >> 46) & 3 | (4 * a3.operand.playMode);
        v7 = *&a3 >> 38;
      }

      else
      {
        v7 = 0;
      }

      if (a3.command == 103)
      {
        v8 = *(&a3.operand.broadcastType + 3);
      }

      else
      {
        v8 = 0;
      }

      if (a3.command == 103)
      {
        v9 = *(&a3.operand.playMode + 2);
      }

      else
      {
        v9 = 0;
      }

      if (a3.command == 103)
      {
        v10 = 7;
      }

      else
      {
        v10 = v6;
      }

      goto LABEL_43;
    }

    if (a3.command == 106)
    {
      v13 = a3.operand.playMode;
    }

    else
    {
      v13 = 0;
    }

    if (a3.command == 106)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = a3.command == 105;
  }

  if (!v15)
  {
    playMode = v13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v15)
  {
    v10 = 4;
  }

  else
  {
    v10 = v14;
  }

LABEL_43:
  v18[0] = a5 | (16 * a4);
  v18[1] = 68;
  v18[2] = a3.command;
  v18[3] = playMode;
  v18[4] = v7;
  v18[5] = v8;
  v18[6] = v9;
  v19 = 0;
  v20 = 0;
  v21 = v10;
  v22 = 0;
  v23 = 0;
  result = [CECMessage messageWithFrame:v18];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)userControlReleasedFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v6 = a4 | (16 * a3);
  strcpy(v7, "E");
  v7[2] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  result = [CECMessage messageWithFrame:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveDevicePowerStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -113;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)reportPowerStatus:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = -112;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)featureAbort:(unsigned __int8)a3 reason:(unsigned __int8)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v8[0] = a6 | (16 * a5);
  v8[1] = 0;
  v8[2] = a3;
  v8[3] = a4;
  v9 = 0;
  v10 = 0;
  v11 = 4;
  result = [CECMessage messageWithFrame:v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)abortFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -1;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveAudioStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v6 = a4 | (16 * a3);
  strcpy(v7, "q");
  v7[2] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  result = [CECMessage messageWithFrame:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)giveSystemAudioModeStatusFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v6 = a4 | (16 * a3);
  strcpy(v7, "}");
  v7[2] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  result = [CECMessage messageWithFrame:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)setSystemAudioMode:(BOOL)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 114;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  LOBYTE(v8[0]) = a5 | (16 * a4);
  BYTE1(v8[0]) = 112;
  if (a3 == 0xFFFF)
  {
    memset(v8 + 2, 0, 14);
    v5 = 2;
  }

  else
  {
    BYTE2(v8[0]) = HIBYTE(a3);
    HIBYTE(v8[0]) = a3;
    *&v8[1] = 0;
    v8[3] = 0;
    v5 = 4;
  }

  v9 = v5;
  result = [CECMessage messageWithFrame:v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)systemAudioModeStatus:(unint64_t)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 126;
  v7[2] = a3 == 2;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)reportAudioStatusWithVolume:(unint64_t)a3 mute:(BOOL)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v9[0] = a6 | (16 * a5);
  v9[1] = 122;
  if (a4)
  {
    v6 = 0x80;
  }

  else
  {
    v6 = 0;
  }

  v9[2] = v6 | (a3 - 101 * ((((a3 - ((a3 * 0x446F86562D9FAEE5uLL) >> 64)) >> 1) + ((a3 * 0x446F86562D9FAEE5uLL) >> 64)) >> 6));
  memset(&v9[3], 0, 13);
  v9[16] = 3;
  result = [CECMessage messageWithFrame:v9];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)reportShortAudioDescriptor:(char *)a3 length:(unsigned __int8)a4 from:(unsigned __int8)a5 to:(unsigned __int8)a6
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(v10) = a6 | (16 * a5);
  BYTE1(v10) = -93;
  memset(&v10 + 2, 0, 14);
  v11 = (a4 + 2) & 0x1F;
  __memcpy_chk();
  v8 = v10;
  v9 = v11;
  result = [CECMessage messageWithFrame:&v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)setAudioVolumeLevel:(unsigned __int8)a3 from:(unsigned __int8)a4 to:(unsigned __int8)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7[0] = a5 | (16 * a4);
  v7[1] = 115;
  v7[2] = a3;
  memset(&v7[3], 0, 13);
  v7[16] = 3;
  result = [CECMessage messageWithFrame:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)initiateARCFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -64;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)terminateARCFrom:(unsigned __int8)a3 to:(unsigned __int8)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = a4 | (16 * a3);
  v6[1] = -59;
  memset(&v6[2], 0, 14);
  v6[16] = 2;
  result = [CECMessage messageWithFrame:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = new_printf_domain();
  if (v4)
  {
    v5 = v4;
    if (register_printf_domain_render_std(v4, "H"))
    {
LABEL_35:
      free_printf_domain(v5);
      goto LABEL_36;
    }

    v6 = [(CECMessage *)self messageType];
    v7 = CECMessageTypeString(v6);
    v8 = v7;
    switch(v6)
    {
      case 128:
        v9 = [(CECMessage *)self _operandsWithLength:4];
        if (!v9)
        {
          goto LABEL_37;
        }

        v10 = v9;
        OUTLINED_FUNCTION_8_0(v9);
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_4_4();
        __strlcpy_chk();
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        CECPhysicalAddressStringWithAddress(bswap32(*(v10 + 1)) >> 16);
        goto LABEL_18;
      case 129:
      case 130:
      case 134:
        goto LABEL_11;
      case 131:
      case 133:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
        goto LABEL_14;
      case 132:
        v12 = [(CECMessage *)self _operandsWithLength:3];
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = v12;
        OUTLINED_FUNCTION_8_0(v12);
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_4_4();
        __strlcpy_chk();
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        CECDeviceTypeString(v13[2]);
LABEL_18:
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        goto LABEL_34;
      case 135:
        v18 = [(CECMessage *)self _operandsWithLength:3];
        if (!v18)
        {
          goto LABEL_37;
        }

        CECVendorIDStringWithID((*v18 << 16) | (*(v18 + 1) << 8) | *(v18 + 2));
        OUTLINED_FUNCTION_5_3();
        goto LABEL_23;
      case 144:
        v14 = [(CECMessage *)self _operandsWithLength:1];
        if (!v14)
        {
          goto LABEL_37;
        }

        v15 = v14;
        v16 = CECPowerStatusString(*v14);
        v17 = kCECPowerStatusStringUnknown;
        goto LABEL_26;
      default:
        if (v6)
        {
          if (v6 != 50 && v6 != 71)
          {
            if (v6 != 158)
            {
              if (v6 == 157)
              {
LABEL_11:
                v11 = [(CECMessage *)self _operandsWithLength:2];
                if (v11)
                {
                  OUTLINED_FUNCTION_8_0(v11);
                  OUTLINED_FUNCTION_5_3();
LABEL_23:
                  OUTLINED_FUNCTION_4_4();
                  __strlcpy_chk();
                  goto LABEL_34;
                }

                goto LABEL_37;
              }

LABEL_14:
              if (v7 == "Unknown")
              {
                v8 = __str;
                snprintf(__str, 0x20uLL, "<<? 0x%02X>>", v6);
              }

              goto LABEL_28;
            }

            v19 = [(CECMessage *)self _operandsWithLength:1];
            if (v19)
            {
              v15 = v19;
              v16 = CECVersionString(*v19);
              v17 = kCECVersionStringUnknown;
LABEL_26:
              if (v16 == *v17)
              {
                v29 = v15;
                v31 = [(CECMessage *)self _operandsLength];
                goto LABEL_33;
              }

              v6 = v16;
              if (!v16)
              {
LABEL_28:
                v6 = [(CECMessage *)self _operandsWithLength:0];
                v29 = v6;
                v31 = [(CECMessage *)self _operandsLength];
LABEL_33:
                OUTLINED_FUNCTION_5_3();
                sxprintf(v23, 0x50uLL, v5, 0, v24, v29, v31);
              }

LABEL_34:
              v25 = CECAddressString([(CECMessage *)self initiator], 1);
              [v3 appendFormat:@"%s -> %s: %s %s", v25, CECAddressString(-[CECMessage destination](self, "destination"), 0), v8, v6];
              goto LABEL_35;
            }

LABEL_37:
            sxprintf(v35, 0x50uLL, v5, 0, "malformed frame: <%H>\n", &self->_frame, *(&self->_frame + 16) & 0x1F);
            [v3 appendFormat:@" %s", v35, v32, v33, v34];
            goto LABEL_35;
          }

          v6 = [(CECMessage *)self _operandsLength];
          v28 = v6;
          v30 = [(CECMessage *)self _operandsWithLength:0];
        }

        else
        {
          v20 = [(CECMessage *)self _operandsWithLength:2];
          if (!v20)
          {
            goto LABEL_37;
          }

          v6 = v20;
          v28 = CECMessageTypeString(*v20);
          v30 = CECAbortReasonString(*(v6 + 1));
        }

        OUTLINED_FUNCTION_5_3();
        snprintf(v21, 0x50uLL, v22, v28, v30);
        goto LABEL_34;
    }
  }

LABEL_36:
  result = v3;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)parseActiveSourcePhysicalAddress:(unsigned __int16 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 130)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseInactiveSourcePhysicalAddress:(unsigned __int16 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 157)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseRoutingChangeOriginalAddress:(unsigned __int16 *)a3 newAddress:(unsigned __int16 *)a4
{
  if ([(CECMessage *)self messageType]!= 128)
  {
    return 0;
  }

  if ((*(&self->_frame + 16) & 0x1Eu) < 6)
  {
    return 0;
  }

  v7 = __rev16(*&self->_frame.blocks[4]);
  if (v7 == 0xFFFF)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = bswap32(*&self->_frame.blocks[2]) >> 16;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return 1;
}

- (BOOL)parseRoutingInformationPhysicalAddress:(unsigned __int16 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 129)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseSetStreamPathPhysicalAddress:(unsigned __int16 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 134)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseCECVersion:(unsigned __int8 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 158)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parseReportPhysicalAddress:(unsigned __int16 *)a3 deviceType:(unint64_t *)a4
{
  if ([(CECMessage *)self messageType]!= 132 || (*(&self->_frame + 16) & 0x1Fu) < 5 || (v7 = __rev16(*&self->_frame.blocks[2]), v7 == 0xFFFF))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v18 = 0;
    v8 = CoreCECDeviceTypeForCECDeviceType(&v18, self->_frame.blocks[4]);
    if (v8)
    {
      if (a3)
      {
        *a3 = v7;
      }

      if (a4)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (BOOL)parseSetMenuLanguage:(CECLanguage *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 50 || (*(v4 + 24) & 0x1Fu) < 5)
  {
    return 0;
  }

  if (v3)
  {
    v6 = *(v4 + 10);
    *(v3 + 2) = *(v4 + 12);
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseDeckControlMode:(unint64_t *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 66 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECDeckControlModeForCECDeckControlMode(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseDeckStatusInfo:(unint64_t *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 27 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECDeckInfoForCECDeckInfo(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseGiveDeckStatusRequest:(unsigned __int8 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 26)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parsePlayMode:(unint64_t *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 65 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECPlayModeForCECPlayMode(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseDeviceVendorID:(unsigned int *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 135 || (v4[24] & 0x1Fu) < 5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = (v4[10] << 16) | (v4[11] << 8) | v4[12];
  }

  return 1;
}

- (BOOL)parseReportAudioStatus:(unint64_t *)a3 muteStatus:(BOOL *)a4
{
  if ([(CECMessage *)self messageType]!= 122)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v7)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = self->_frame.blocks[2] & 0x7F;
  }

  if (a4)
  {
    *a4 = self->_frame.blocks[2] >> 7;
  }

  return 1;
}

- (BOOL)parseSetOSDName:(id *)a3
{
  OUTLINED_FUNCTION_18();
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  if ([v4 messageType] == 71 && (OUTLINED_FUNCTION_0_8(), v6))
  {
    if (v3)
    {
      v10 = v5 - 2;
      __memcpy_chk();
      v7 = 1;
      *v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v11 length:v10 encoding:1];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)parseMenuRequest:(unsigned __int8 *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 141)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parseUserControlPressed:(CECUserControl *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 68)
  {
    return 0;
  }

  v6 = v4[24] & 0x1F;
  if (v6 < 3)
  {
    return 0;
  }

  v7 = 0;
  v8 = v4[10];
  v9 = 0;
  switch(v4[10])
  {
    case 'h':
    case 'i':
    case 'j':
      goto LABEL_4;
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
      goto LABEL_6;
    case 'g':
      if (v6 < 7)
      {
        return 0;
      }

      v11 = v4[11];
      HIDWORD(v12) = v4[12];
      LODWORD(v12) = v11 << 24;
      v7 = v12 >> 26;
      v9 = ((v4[13] << 24) | (v4[14] << 16) | ((v11 << 14) | (v4[12] << 6))) >> 8;
      goto LABEL_6;
    default:
      if (v8 != 86)
      {
        v9 = 0;
        if (v8 != 87)
        {
          goto LABEL_6;
        }
      }

LABEL_4:
      if (v6 == 3)
      {
        return 0;
      }

      v9 = 0;
      v7 = v4[11];
LABEL_6:
      if (v3)
      {
        *v3 = v8;
        *(v3 + 4) = v7;
        *(v3 + 5) = v9;
        *(v3 + 7) = BYTE2(v9);
      }

      result = 1;
      break;
  }

  return result;
}

- (BOOL)parseReportPowerStatus:(unint64_t *)a3
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 144 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECPowerStatusForCECPowerStatus(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseSystemAudioModeStatus:(unint64_t *)a3
{
  OUTLINED_FUNCTION_18();
  if (([v5 messageType] == 126 || objc_msgSend(v4, "messageType") == 114) && (OUTLINED_FUNCTION_0_8(), v6))
  {
    OUTLINED_FUNCTION_3_3();
    v9 = CoreCECSystemAudioModeStatusForCECSystemAudioModeStatus(v7, v8);
    if (v9)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)parseFeatureAbortOpcode:(char *)a3 reason:(unsigned __int8 *)a4
{
  if ([(CECMessage *)self messageType])
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v7)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = self->_frame.blocks[2];
  }

  if (a4)
  {
    *a4 = self->_frame.blocks[3];
  }

  return 1;
}

- (BOOL)parseReportFeatures:(unsigned __int8 *)a3 deviceTypes:(char *)a4 rcProfile:(id *)a5 features:(char *)a6
{
  if ([(CECMessage *)self messageType]== 166 && (*(&self->_frame + 16) & 0x1Eu) >= 6)
  {
    *a3 = self->_frame.blocks[2];
    *a4 = self->_frame.blocks[3];
    v11 = ((self->_frame.blocks[4] >> 6) & 1) == 0;
    a5->var0 = (self->_frame.blocks[4] & 0x40) != 0;
    if (v11)
    {
      v12 = 15;
    }

    else
    {
      v12 = 63;
    }

    a5->var1.var0 = self->_frame.blocks[4] & v12;
    v13 = *(&self->_frame + 16) & 0x1F;
    if (v13 < 5)
    {
      LODWORD(v13) = 4;
LABEL_14:
      *a6 = self->_frame.blocks[v13 + 1];
      return 1;
    }

    v14 = &self->_frame.blocks[4];
    v15 = 4;
    while (1)
    {
      v16 = *v14++;
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      if (v13 == ++v15)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v13) = v15;
LABEL_13:
    if (v13 <= 0xE)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

@end