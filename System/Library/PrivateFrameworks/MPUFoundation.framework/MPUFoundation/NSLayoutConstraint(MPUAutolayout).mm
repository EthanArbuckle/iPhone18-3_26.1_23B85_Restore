@interface NSLayoutConstraint(MPUAutolayout)
+ (id)constraintsByAttachingView:()MPUAutolayout toView:alongEdges:insets:;
+ (id)constraintsByAttachingView:()MPUAutolayout toView:inCorner:offset:;
+ (id)constraintsByCenteringAndContainingView:()MPUAutolayout inView:insets:;
+ (id)constraintsByCenteringView:()MPUAutolayout withView:alongAxes:offset:;
+ (id)constraintsBySizingView:()MPUAutolayout toSize:;
@end

@implementation NSLayoutConstraint(MPUAutolayout)

+ (id)constraintsByCenteringView:()MPUAutolayout withView:alongAxes:offset:
{
  v11 = a5;
  v12 = a6;
  array = [MEMORY[0x277CBEB18] array];
  if (a7)
  {
    v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:9 relatedBy:0 toItem:v12 attribute:9 multiplier:1.0 constant:self];
    [array addObject:v14];
  }

  if ((a7 & 2) != 0)
  {
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:10 relatedBy:0 toItem:v12 attribute:10 multiplier:1.0 constant:a2];
    [array addObject:v15];
  }

  return array;
}

+ (id)constraintsByAttachingView:()MPUAutolayout toView:alongEdges:insets:
{
  v15 = a7;
  v16 = a8;
  array = [MEMORY[0x277CBEB18] array];
  if (a9)
  {
    v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:self];
    [array addObject:v20];

    if ((a9 & 4) == 0)
    {
LABEL_3:
      if ((a9 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a9 & 4) == 0)
  {
    goto LABEL_3;
  }

  v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v16 attribute:4 multiplier:1.0 constant:-a3];
  [array addObject:v21];

  if ((a9 & 2) == 0)
  {
LABEL_4:
    if ((a9 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v16 attribute:5 multiplier:1.0 constant:a2];
  [array addObject:v22];

  if ((a9 & 8) != 0)
  {
LABEL_5:
    v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:6 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:-a4];
    [array addObject:v18];
  }

LABEL_6:

  return array;
}

+ (id)constraintsByCenteringAndContainingView:()MPUAutolayout inView:insets:
{
  v13 = MEMORY[0x277CBEB18];
  v14 = a8;
  v15 = a7;
  array = [v13 array];
  v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:9 relatedBy:0 toItem:v14 attribute:9 multiplier:1.0 constant:(a2 - a4) * 0.5];
  [array addObject:v17];
  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:10 relatedBy:0 toItem:v14 attribute:10 multiplier:1.0 constant:(self - a3) * 0.5];
  [array addObject:v18];
  v19 = -(a2 + a4);
  v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:7 relatedBy:-1 toItem:v14 attribute:7 multiplier:1.0 constant:v19];
  [array addObject:v20];
  v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:7 relatedBy:0 toItem:v14 attribute:7 multiplier:1.0 constant:v19];
  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  [array addObject:v21];
  v23 = -(self + a3);
  v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:8 relatedBy:-1 toItem:v14 attribute:8 multiplier:1.0 constant:v23];
  [array addObject:v24];
  v25 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:8 relatedBy:0 toItem:v14 attribute:8 multiplier:1.0 constant:v23];

  LODWORD(v26) = 1144750080;
  [v25 setPriority:v26];
  [array addObject:v25];

  return array;
}

+ (id)constraintsByAttachingView:()MPUAutolayout toView:inCorner:offset:
{
  v7 = a2;
  selfCopy = self;
  v19[2] = *MEMORY[0x277D85DE8];
  if (a7 <= 3)
  {
    if (a7 == 1)
    {
      v10 = 5;
      goto LABEL_10;
    }

    if (a7 == 2)
    {
      selfCopy = -self;
      v10 = 6;
LABEL_10:
      v11 = 3;
      goto LABEL_13;
    }

LABEL_8:
    v11 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  if (a7 == 4)
  {
    v7 = -a2;
    v10 = 5;
  }

  else
  {
    if (a7 != 8)
    {
      goto LABEL_8;
    }

    selfCopy = -self;
    v7 = -a2;
    v10 = 6;
  }

  v11 = 4;
LABEL_13:
  v12 = MEMORY[0x277CCAAD0];
  v13 = a6;
  v14 = a5;
  v15 = [v12 constraintWithItem:v14 attribute:9 relatedBy:0 toItem:v13 attribute:v10 multiplier:1.0 constant:selfCopy];
  v16 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:10 relatedBy:0 toItem:v13 attribute:v11 multiplier:1.0 constant:v7];

  v19[0] = v15;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  return v17;
}

+ (id)constraintsBySizingView:()MPUAutolayout toSize:
{
  v7 = a5;
  array = [MEMORY[0x277CBEB18] array];
  if (self != -1.0)
  {
    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:self];
    [array addObject:v9];
  }

  if (a2 != -1.0)
  {
    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
    [array addObject:v10];
  }

  return array;
}

@end