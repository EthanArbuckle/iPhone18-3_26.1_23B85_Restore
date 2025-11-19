@interface WDTableRowProperties
- (BOOL)header;
- (BOOL)isHeaderOverridden;
- (BOOL)isHeightOverridden;
- (BOOL)isHeightTypeOverridden;
- (BOOL)isWidthAfterOverridden;
- (BOOL)isWidthAfterTypeOverridden;
- (BOOL)isWidthBeforeOverridden;
- (BOOL)isWidthBeforeTypeOverridden;
- (WDTableRowProperties)initWithDocument:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)heightType;
- (int)resolveMode;
- (int)widthAfterType;
- (int)widthBeforeType;
- (int64_t)height;
- (signed)widthAfter;
- (signed)widthBefore;
- (void)addProperties:(id)a3;
- (void)addPropertiesValues:(id *)a3 to:(id *)a4;
- (void)setHeader:(BOOL)a3;
- (void)setHeight:(int64_t)a3;
- (void)setHeightType:(int)a3;
- (void)setResolveMode:(int)a3;
- (void)setWidthAfter:(signed __int16)a3;
- (void)setWidthAfterType:(int)a3;
- (void)setWidthBefore:(signed __int16)a3;
- (void)setWidthBeforeType:(int)a3;
@end

@implementation WDTableRowProperties

- (BOOL)isHeightOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

  if ((*(self + 24) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 28) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 24) & 1) == 0 && (*(&self->mOriginalProperties + 28) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 24))
  {
LABEL_9:
    v3 = 60;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int64_t)height
{
  if ((*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28) & 0x10) != 0)
  {
    v3 = 80;
  }

  else
  {
    if ((*(self + 24) & 4) == 0 && (*(self + 24) & 1) == 0 || (*(&self->mOriginalProperties + 28) & 0x10) == 0)
    {
      return 0;
    }

    v3 = 48;
  }

  return *(&self->super.isa + v3);
}

- (WDTableRowProperties)initWithDocument:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WDTableRowProperties;
  v5 = [(WDTableRowProperties *)&v11 init];
  if (v5)
  {
    v6 = [[WDTableProperties alloc] initWithDocument:v4];
    mTableProperties = v5->mTableProperties;
    v5->mTableProperties = v6;

    v8 = [[WDCharacterProperties alloc] initWithDocument:v4];
    mCharacterProperties = v5->mCharacterProperties;
    v5->mCharacterProperties = v8;

    *(v5 + 24) = *(v5 + 24) & 0xF8 | 1;
  }

  return v5;
}

- (int)resolveMode
{
  v2 = *(self + 24);
  if ((v2 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = (v2 >> 1) & 2;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)setResolveMode:(int)a3
{
  v3 = (2 * (a3 == 1)) | (4 * (a3 == 2));
  if (!a3)
  {
    ++v3;
  }

  *(self + 24) = v3 | *(self + 24) & 0xF8;
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  [(WDTableRowProperties *)self addPropertiesValues:v4 + 32 to:&self->mOriginalProperties];
  [(WDTableRowProperties *)self addPropertiesValues:v4 + 64 to:&self->mTrackedProperties];
}

- (signed)widthBefore
{
  if (*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28))
  {
    v2 = 64;
  }

  else
  {
    if ((*(self + 24) & 4) == 0 && (*(self + 24) & 1) == 0 || (*(&self->mOriginalProperties + 28) & 1) == 0)
    {
      return 0;
    }

    v2 = 32;
  }

  return *(&self->super.isa + v2);
}

- (void)setWidthBefore:(signed __int16)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 64;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 32;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 1u;
}

- (BOOL)isWidthBeforeOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
LABEL_11:
    v2 = *(&self->super.isa + v3);
    return v2 & 1;
  }

  if ((*(self + 24) & 4) == 0)
  {
    if ((*(self + 24) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(&self->mTrackedProperties + 28))
  {
    v2 = 1;
    return v2 & 1;
  }

  if (*(self + 24) & 1) != 0 || (*(&self->mOriginalProperties + 28))
  {
LABEL_10:
    v3 = 60;
    goto LABEL_11;
  }

LABEL_4:
  v2 = 0;
  return v2 & 1;
}

- (int)widthBeforeType
{
  if ((*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28) & 2) != 0)
  {
    v3 = 68;
  }

  else
  {
    if ((*(self + 24) & 4) == 0 && (*(self + 24) & 1) == 0 || (*(&self->mOriginalProperties + 28) & 2) == 0)
    {
      return 1;
    }

    v3 = 36;
  }

  return *(&self->super.isa + v3);
}

- (void)setWidthBeforeType:(int)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 68;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 36;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 2u;
}

- (BOOL)isWidthBeforeTypeOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

  if ((*(self + 24) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 28) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 24) & 1) == 0 && (*(&self->mOriginalProperties + 28) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 24))
  {
LABEL_9:
    v3 = 60;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (signed)widthAfter
{
  if ((*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28) & 4) != 0)
  {
    v3 = 72;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 24) & 4) != 0 || (*(self + 24)) && (*(&self->mOriginalProperties + 28) & 4) != 0)
  {
    v3 = 40;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)setWidthAfter:(signed __int16)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 72;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 40;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 4u;
}

- (BOOL)isWidthAfterOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

  if ((*(self + 24) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 28) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 24) & 1) == 0 && (*(&self->mOriginalProperties + 28) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 24))
  {
LABEL_9:
    v3 = 60;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)widthAfterType
{
  if ((*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28) & 8) != 0)
  {
    v3 = 76;
  }

  else
  {
    if ((*(self + 24) & 4) == 0 && (*(self + 24) & 1) == 0 || (*(&self->mOriginalProperties + 28) & 8) == 0)
    {
      return 1;
    }

    v3 = 44;
  }

  return *(&self->super.isa + v3);
}

- (void)setWidthAfterType:(int)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 76;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 44;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 8u;
}

- (BOOL)isWidthAfterTypeOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

  if ((*(self + 24) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 28) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 24) & 1) == 0 && (*(&self->mOriginalProperties + 28) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 24))
  {
LABEL_9:
    v3 = 60;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setHeight:(int64_t)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 80;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 48;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 0x10u;
}

- (int)heightType
{
  if ((*(self + 24) & 6) != 0 && (*(&self->mTrackedProperties + 28) & 0x20) != 0)
  {
    v3 = 88;
  }

  else
  {
    if ((*(self + 24) & 4) == 0 && (*(self + 24) & 1) == 0 || (*(&self->mOriginalProperties + 28) & 0x20) == 0)
    {
      return 1;
    }

    v3 = 56;
  }

  return *(&self->super.isa + v3);
}

- (void)setHeightType:(int)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    v4 = 88;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
    v4 = 56;
  }

  *(&self->super.isa + v4) = a3;
  *(&self->super.isa + v3) |= 0x20u;
}

- (BOOL)isHeightTypeOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

  if ((*(self + 24) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 28) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 24) & 1) == 0 && (*(&self->mOriginalProperties + 28) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 24))
  {
LABEL_9:
    v3 = 60;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)header
{
  if ((*(self + 24) & 6) != 0 && *(&self->mTrackedProperties + 28) < 0)
  {
    LODWORD(self) = (*(&self->mTrackedProperties + 28) >> 6) & 1;
  }

  else
  {
    LOBYTE(self) = ((*(self + 24) & 4) != 0 || (*(self + 24) & 1) != 0) && *(&self->mOriginalProperties + 28) < 0 && (*(&self->mOriginalProperties + 28) & 0x40) != 0;
  }

  return self;
}

- (void)setHeader:(BOOL)a3
{
  if ((*(self + 24) & 2) != 0)
  {
    v3 = 92;
  }

  else
  {
    if ((*(self + 24) & 1) == 0)
    {
      return;
    }

    v3 = 60;
  }

  if (a3)
  {
    v4 = -64;
  }

  else
  {
    v4 = 0x80;
  }

  *(&self->super.isa + v3) = v4 & 0xC0 | *(&self->super.isa + v3) & 0x3F;
}

- (BOOL)isHeaderOverridden
{
  if ((*(self + 24) & 2) != 0)
  {
    v2 = 92;
    return *(&self->super.isa + v2) < 0;
  }

  if ((*(self + 24) & 4) == 0)
  {
    if (*(self + 24))
    {
LABEL_10:
      v2 = 60;
      return *(&self->super.isa + v2) < 0;
    }

    return 0;
  }

  if ((*(&self->mTrackedProperties + 28) & 0x80000000) == 0)
  {
    if ((*(self + 24) & 1) != 0 || *(&self->mOriginalProperties + 28) < 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDTableRowProperties allocWithZone:?]];
  if (v4)
  {
    v5 = [(WDTableProperties *)self->mTableProperties copy];
    mTableProperties = v4->mTableProperties;
    v4->mTableProperties = v5;

    v7 = *(v4 + 24) & 0xFE | *(self + 24) & 1;
    *(v4 + 24) = v7;
    v8 = v7 & 0xFD | (2 * ((*(self + 24) & 2) != 0));
    *(v4 + 24) = v8;
    *(v4 + 24) = v8 & 0xFB | *(self + 24) & 4;
    v9 = *&self->mOriginalProperties.height;
    *&v4->mOriginalProperties.widthBefore = *&self->mOriginalProperties.widthBefore;
    *&v4->mOriginalProperties.height = v9;
    v10 = *&self->mTrackedProperties.height;
    *&v4->mTrackedProperties.widthBefore = *&self->mTrackedProperties.widthBefore;
    *&v4->mTrackedProperties.height = v10;
    v11 = v4;
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTableRowProperties;
  v2 = [(WDTableRowProperties *)&v4 description];

  return v2;
}

- (void)addPropertiesValues:(id *)a3 to:(id *)a4
{
  v4 = *(a4 + 28);
  if (v4 & 1) == 0 && (*(a3 + 28))
  {
    v4 |= 1u;
    *(a4 + 28) = v4;
    a4->var0 = a3->var0;
  }

  if ((v4 & 2) == 0 && (*(a3 + 28) & 2) != 0)
  {
    v4 |= 2u;
    *(a4 + 28) = v4;
    a4->var1 = a3->var1;
  }

  if ((v4 & 4) == 0 && (*(a3 + 28) & 4) != 0)
  {
    v4 |= 4u;
    *(a4 + 28) = v4;
    a4->var2 = a3->var2;
  }

  if ((v4 & 8) == 0 && (*(a3 + 28) & 8) != 0)
  {
    v4 |= 8u;
    *(a4 + 28) = v4;
    a4->var3 = a3->var3;
  }

  if ((v4 & 0x10) == 0 && (*(a3 + 28) & 0x10) != 0)
  {
    v4 |= 0x10u;
    *(a4 + 28) = v4;
    a4->var4 = a3->var4;
  }

  if ((v4 & 0x20) == 0 && (*(a3 + 28) & 0x20) != 0)
  {
    v4 |= 0x20u;
    *(a4 + 28) = v4;
    a4->var5 = a3->var5;
  }

  if ((v4 & 0x80) == 0 && *(a3 + 28) < 0)
  {
    v5 = v4 | 0x80;
    *(a4 + 28) = v5;
    *(a4 + 28) = *(a3 + 28) & 0x40 | v5 & 0xBF;
  }
}

@end