@interface _CUIRecognitionObjectRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4;
@end

@implementation _CUIRecognitionObjectRendition

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = _CUIRecognitionObjectRendition;
  v4 = [(_CUIRawDataRendition *)&v8 _initWithCSIHeader:a3 version:*&a4];
  if (v4)
  {
    v5 = [[_CUISubrangeData alloc] initWithData:*(v4 + 27) range:0, 4];
    *(v4 + 56) = *[(_CUISubrangeData *)v5 bytes];

    v6 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", *(v4 + 27), 4, [*(v4 + 27) length] - 4);
    *(v4 + 27) = v6;
  }

  return v4;
}

- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4
{
  v15.receiver = self;
  v15.super_class = _CUIRecognitionObjectRendition;
  [CUIThemeRendition _initalizeMetadataFromCSIData:sel__initalizeMetadataFromCSIData_version_ version:?];
  var10 = a3->var10;
  if (var10)
  {
    v8 = (&a3->var11.var1[a3->var11.var0 + 1] + var10);
    v9 = &a3->var11.var1[a3->var11.var0 + 1];
    do
    {
      v10 = v9[1];
      if (*v9 == 1017)
      {
        v11 = *&self[1].super.super.super.isa;
        v12 = *&self[1].super.super._stackKey[2].identifier;
        LODWORD(v11) = v9[3];
        LODWORD(self[1].super.super.super.isa) = v11;
        DWORD1(v11) = v9[4];
        *&self[1].super.super.super.isa = v11;
        DWORD2(v11) = v9[5];
        *&self[1].super.super.super.isa = v11;
        HIDWORD(v11) = v9[6];
        *&self[1].super.super.super.isa = v11;
        LODWORD(v12) = v9[7];
        self[1].super.super._stackKey[2] = v12;
        DWORD1(v12) = v9[8];
        *&self[1].super.super._stackKey[2].identifier = v12;
        DWORD2(v12) = v9[9];
        *&self[1].super.super._stackKey[2].identifier = v12;
        HIDWORD(v12) = v9[10];
        *&self[1].super.super._stackKey[2].identifier = v12;
        v13 = *&self[1].super.super._stackKey[6].identifier;
        v14 = *&self[1].super.super._stackKey[10].identifier;
        LODWORD(v13) = v9[11];
        self[1].super.super._stackKey[6] = v13;
        DWORD1(v13) = v9[12];
        *&self[1].super.super._stackKey[6].identifier = v13;
        DWORD2(v13) = v9[13];
        *&self[1].super.super._stackKey[6].identifier = v13;
        HIDWORD(v13) = v9[14];
        *&self[1].super.super._stackKey[6].identifier = v13;
        LODWORD(v14) = v9[15];
        self[1].super.super._stackKey[10] = v14;
        DWORD1(v14) = v9[16];
        *&self[1].super.super._stackKey[10].identifier = v14;
        DWORD2(v14) = v9[17];
        *&self[1].super.super._stackKey[10].identifier = v14;
        HIDWORD(v14) = v9[18];
        *&self[1].super.super._stackKey[10].identifier = v14;
      }

      if (a4 <= 0x34E && *v9 == 1019)
      {
        v10 = 12;
      }

      v9 = (v9 + v10 + 8);
    }

    while (v9 < v8);
  }
}

@end