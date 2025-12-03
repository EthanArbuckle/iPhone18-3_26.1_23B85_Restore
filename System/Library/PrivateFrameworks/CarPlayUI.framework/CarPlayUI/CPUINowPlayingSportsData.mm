@interface CPUINowPlayingSportsData
+ (id)teamLogoWithInitials:(id)initials;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSportsData:(id)data;
- (unint64_t)hash;
@end

@implementation CPUINowPlayingSportsData

+ (id)teamLogoWithInitials:(id)initials
{
  initialsCopy = initials;
  if ([initialsCopy length] >= 4)
  {
    v4 = [initialsCopy substringToIndex:3];

    initialsCopy = v4;
  }

  v5 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{400.0, 400.0}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CPUINowPlayingSportsData_teamLogoWithInitials___block_invoke;
  v9[3] = &unk_278D9C750;
  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(0x4079000000000000uLL);
  v14 = v13;
  v10 = initialsCopy;
  v6 = initialsCopy;
  v7 = [v5 imageWithActions:v9];

  return v7;
}

void __49__CPUINowPlayingSportsData_teamLogoWithInitials___block_invoke(uint64_t a1, void *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75348];
  v4 = a2;
  v5 = [v3 colorWithWhite:1.0 alpha:0.0500000007];
  [v5 setFill];

  v6 = [v4 CGContext];
  CGContextFillEllipseInRect(v6, *(a1 + 40));
  v7 = objc_alloc_init(MEMORY[0x277D74240]);
  [v7 setAlignment:1];
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80) * 0.5 + -100.0;
  v14[0] = *MEMORY[0x277D740A8];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:175.0 weight:*MEMORY[0x277D74420] width:*MEMORY[0x277D74440]];
  v15[0] = v11;
  v14[1] = *MEMORY[0x277D740C0];
  v12 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  v14[2] = *MEMORY[0x277D74118];
  v15[1] = v12;
  v15[2] = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v8 drawInRect:v13 withAttributes:{0.0, v10, v9, 175.0}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPUINowPlayingSportsData *)self isEqualToSportsData:equalCopy];

  return v5;
}

- (BOOL)isEqualToSportsData:(id)data
{
  dataCopy = data;
  leftTeamLogo = [(CPUINowPlayingSportsData *)self leftTeamLogo];
  leftTeamLogo2 = [dataCopy leftTeamLogo];
  if ([leftTeamLogo isEqual:leftTeamLogo2])
  {
    rightTeamLogo = [(CPUINowPlayingSportsData *)self rightTeamLogo];
    rightTeamLogo2 = [dataCopy rightTeamLogo];
    if ([rightTeamLogo isEqual:rightTeamLogo2] && (v9 = -[CPUINowPlayingSportsData leftTeamFavorite](self, "leftTeamFavorite"), v9 == objc_msgSend(dataCopy, "leftTeamFavorite")) && (v10 = -[CPUINowPlayingSportsData rightTeamFavorite](self, "rightTeamFavorite"), v10 == objc_msgSend(dataCopy, "rightTeamFavorite")))
    {
      leftTeamScore = [(CPUINowPlayingSportsData *)self leftTeamScore];
      leftTeamScore2 = [dataCopy leftTeamScore];
      if ([leftTeamScore isEqualToString:leftTeamScore2])
      {
        rightTeamScore = [(CPUINowPlayingSportsData *)self rightTeamScore];
        rightTeamScore2 = [dataCopy rightTeamScore];
        if ([rightTeamScore isEqualToString:rightTeamScore2])
        {
          v45 = rightTeamScore;
          leftTeamName = [(CPUINowPlayingSportsData *)self leftTeamName];
          leftTeamName2 = [dataCopy leftTeamName];
          v44 = leftTeamName;
          if ([leftTeamName isEqualToString:?])
          {
            rightTeamName = [(CPUINowPlayingSportsData *)self rightTeamName];
            rightTeamName2 = [dataCopy rightTeamName];
            v42 = rightTeamName;
            if ([rightTeamName isEqualToString:?])
            {
              leftTeamStanding = [(CPUINowPlayingSportsData *)self leftTeamStanding];
              leftTeamStanding2 = [dataCopy leftTeamStanding];
              v40 = leftTeamStanding;
              if ([leftTeamStanding isEqualToString:?])
              {
                rightTeamStanding = [(CPUINowPlayingSportsData *)self rightTeamStanding];
                rightTeamStanding2 = [dataCopy rightTeamStanding];
                v38 = rightTeamStanding;
                v21 = [rightTeamStanding isEqualToString:?];
                rightTeamScore = v45;
                if (v21 && (-[CPUINowPlayingSportsData timer](self, "timer"), v23 = v22, [dataCopy timer], v23 == v24) && (v34 = -[CPUINowPlayingSportsData countsUp](self, "countsUp"), v34 == objc_msgSend(dataCopy, "countsUp")) && (v35 = -[CPUINowPlayingSportsData timerPaused](self, "timerPaused"), v35 == objc_msgSend(dataCopy, "timerPaused")))
                {
                  eventStatusImage = [(CPUINowPlayingSportsData *)self eventStatusImage];
                  eventStatusImage2 = [dataCopy eventStatusImage];
                  if ([eventStatusImage isEqual:?])
                  {
                    leftPossessionIndicator = [(CPUINowPlayingSportsData *)self leftPossessionIndicator];
                    [dataCopy leftPossessionIndicator];
                    v32 = v31 = leftPossessionIndicator;
                    if ([leftPossessionIndicator isEqual:?])
                    {
                      rightPossessionIndicator = [(CPUINowPlayingSportsData *)self rightPossessionIndicator];
                      rightPossessionIndicator2 = [dataCopy rightPossessionIndicator];
                      v30 = rightPossessionIndicator;
                      if ([rightPossessionIndicator isEqual:?])
                      {
                        eventStatusText = [(CPUINowPlayingSportsData *)self eventStatusText];
                        eventStatusText2 = [dataCopy eventStatusText];
                        v11 = [eventStatusText isEqualToArray:eventStatusText2];
                      }

                      else
                      {
                        v11 = 0;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

                    rightTeamScore = v45;
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                else
                {
                  v11 = 0;
                }
              }

              else
              {
                v11 = 0;
                rightTeamScore = v45;
              }
            }

            else
            {
              v11 = 0;
              rightTeamScore = v45;
            }
          }

          else
          {
            v11 = 0;
            rightTeamScore = v45;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  leftTeamLogo = [(CPUINowPlayingSportsData *)self leftTeamLogo];
  v3 = [leftTeamLogo hash];
  rightTeamLogo = [(CPUINowPlayingSportsData *)self rightTeamLogo];
  v4 = [rightTeamLogo hash] ^ v3;
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData leftTeamFavorite](self, "leftTeamFavorite")}];
  v5 = v4 ^ [v36 hash];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData rightTeamFavorite](self, "rightTeamFavorite")}];
  v6 = [v35 hash];
  leftTeamScore = [(CPUINowPlayingSportsData *)self leftTeamScore];
  v7 = v5 ^ v6 ^ [leftTeamScore hash];
  rightTeamScore = [(CPUINowPlayingSportsData *)self rightTeamScore];
  v8 = [rightTeamScore hash];
  leftTeamName = [(CPUINowPlayingSportsData *)self leftTeamName];
  v9 = v8 ^ [leftTeamName hash];
  rightTeamName = [(CPUINowPlayingSportsData *)self rightTeamName];
  v10 = v9 ^ [rightTeamName hash];
  leftTeamStanding = [(CPUINowPlayingSportsData *)self leftTeamStanding];
  v11 = v10 ^ [leftTeamStanding hash];
  rightTeamStanding = [(CPUINowPlayingSportsData *)self rightTeamStanding];
  v13 = v11 ^ [rightTeamStanding hash];
  v14 = MEMORY[0x277CCABB0];
  [(CPUINowPlayingSportsData *)self timer];
  v15 = [v14 numberWithDouble:?];
  v16 = v13 ^ [v15 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData countsUp](self, "countsUp")}];
  v18 = v7 ^ v16 ^ [v17 hash];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData timerPaused](self, "timerPaused")}];
  v20 = [v19 hash];
  eventStatusImage = [(CPUINowPlayingSportsData *)self eventStatusImage];
  v22 = v20 ^ [eventStatusImage hash];
  leftPossessionIndicator = [(CPUINowPlayingSportsData *)self leftPossessionIndicator];
  v24 = v22 ^ [leftPossessionIndicator hash];
  rightPossessionIndicator = [(CPUINowPlayingSportsData *)self rightPossessionIndicator];
  v26 = v18 ^ v24 ^ [rightPossessionIndicator hash];
  eventStatusText = [(CPUINowPlayingSportsData *)self eventStatusText];
  v28 = [eventStatusText hash];

  return v26 ^ v28;
}

@end