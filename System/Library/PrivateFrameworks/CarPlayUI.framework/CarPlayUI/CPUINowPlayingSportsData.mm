@interface CPUINowPlayingSportsData
+ (id)teamLogoWithInitials:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSportsData:(id)a3;
- (unint64_t)hash;
@end

@implementation CPUINowPlayingSportsData

+ (id)teamLogoWithInitials:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 4)
  {
    v4 = [v3 substringToIndex:3];

    v3 = v4;
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
  v10 = v3;
  v6 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPUINowPlayingSportsData *)self isEqualToSportsData:v4];

  return v5;
}

- (BOOL)isEqualToSportsData:(id)a3
{
  v4 = a3;
  v5 = [(CPUINowPlayingSportsData *)self leftTeamLogo];
  v6 = [v4 leftTeamLogo];
  if ([v5 isEqual:v6])
  {
    v7 = [(CPUINowPlayingSportsData *)self rightTeamLogo];
    v8 = [v4 rightTeamLogo];
    if ([v7 isEqual:v8] && (v9 = -[CPUINowPlayingSportsData leftTeamFavorite](self, "leftTeamFavorite"), v9 == objc_msgSend(v4, "leftTeamFavorite")) && (v10 = -[CPUINowPlayingSportsData rightTeamFavorite](self, "rightTeamFavorite"), v10 == objc_msgSend(v4, "rightTeamFavorite")))
    {
      v13 = [(CPUINowPlayingSportsData *)self leftTeamScore];
      v14 = [v4 leftTeamScore];
      if ([v13 isEqualToString:v14])
      {
        v15 = [(CPUINowPlayingSportsData *)self rightTeamScore];
        v16 = [v4 rightTeamScore];
        if ([v15 isEqualToString:v16])
        {
          v45 = v15;
          v17 = [(CPUINowPlayingSportsData *)self leftTeamName];
          v43 = [v4 leftTeamName];
          v44 = v17;
          if ([v17 isEqualToString:?])
          {
            v18 = [(CPUINowPlayingSportsData *)self rightTeamName];
            v41 = [v4 rightTeamName];
            v42 = v18;
            if ([v18 isEqualToString:?])
            {
              v19 = [(CPUINowPlayingSportsData *)self leftTeamStanding];
              v39 = [v4 leftTeamStanding];
              v40 = v19;
              if ([v19 isEqualToString:?])
              {
                v20 = [(CPUINowPlayingSportsData *)self rightTeamStanding];
                v37 = [v4 rightTeamStanding];
                v38 = v20;
                v21 = [v20 isEqualToString:?];
                v15 = v45;
                if (v21 && (-[CPUINowPlayingSportsData timer](self, "timer"), v23 = v22, [v4 timer], v23 == v24) && (v34 = -[CPUINowPlayingSportsData countsUp](self, "countsUp"), v34 == objc_msgSend(v4, "countsUp")) && (v35 = -[CPUINowPlayingSportsData timerPaused](self, "timerPaused"), v35 == objc_msgSend(v4, "timerPaused")))
                {
                  v36 = [(CPUINowPlayingSportsData *)self eventStatusImage];
                  v33 = [v4 eventStatusImage];
                  if ([v36 isEqual:?])
                  {
                    v25 = [(CPUINowPlayingSportsData *)self leftPossessionIndicator];
                    [v4 leftPossessionIndicator];
                    v32 = v31 = v25;
                    if ([v25 isEqual:?])
                    {
                      v26 = [(CPUINowPlayingSportsData *)self rightPossessionIndicator];
                      v29 = [v4 rightPossessionIndicator];
                      v30 = v26;
                      if ([v26 isEqual:?])
                      {
                        v28 = [(CPUINowPlayingSportsData *)self eventStatusText];
                        v27 = [v4 eventStatusText];
                        v11 = [v28 isEqualToArray:v27];
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

                    v15 = v45;
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
                v15 = v45;
              }
            }

            else
            {
              v11 = 0;
              v15 = v45;
            }
          }

          else
          {
            v11 = 0;
            v15 = v45;
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
  v38 = [(CPUINowPlayingSportsData *)self leftTeamLogo];
  v3 = [v38 hash];
  v37 = [(CPUINowPlayingSportsData *)self rightTeamLogo];
  v4 = [v37 hash] ^ v3;
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData leftTeamFavorite](self, "leftTeamFavorite")}];
  v5 = v4 ^ [v36 hash];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData rightTeamFavorite](self, "rightTeamFavorite")}];
  v6 = [v35 hash];
  v34 = [(CPUINowPlayingSportsData *)self leftTeamScore];
  v7 = v5 ^ v6 ^ [v34 hash];
  v33 = [(CPUINowPlayingSportsData *)self rightTeamScore];
  v8 = [v33 hash];
  v32 = [(CPUINowPlayingSportsData *)self leftTeamName];
  v9 = v8 ^ [v32 hash];
  v31 = [(CPUINowPlayingSportsData *)self rightTeamName];
  v10 = v9 ^ [v31 hash];
  v30 = [(CPUINowPlayingSportsData *)self leftTeamStanding];
  v11 = v10 ^ [v30 hash];
  v12 = [(CPUINowPlayingSportsData *)self rightTeamStanding];
  v13 = v11 ^ [v12 hash];
  v14 = MEMORY[0x277CCABB0];
  [(CPUINowPlayingSportsData *)self timer];
  v15 = [v14 numberWithDouble:?];
  v16 = v13 ^ [v15 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData countsUp](self, "countsUp")}];
  v18 = v7 ^ v16 ^ [v17 hash];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPUINowPlayingSportsData timerPaused](self, "timerPaused")}];
  v20 = [v19 hash];
  v21 = [(CPUINowPlayingSportsData *)self eventStatusImage];
  v22 = v20 ^ [v21 hash];
  v23 = [(CPUINowPlayingSportsData *)self leftPossessionIndicator];
  v24 = v22 ^ [v23 hash];
  v25 = [(CPUINowPlayingSportsData *)self rightPossessionIndicator];
  v26 = v18 ^ v24 ^ [v25 hash];
  v27 = [(CPUINowPlayingSportsData *)self eventStatusText];
  v28 = [v27 hash];

  return v26 ^ v28;
}

@end