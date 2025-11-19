@interface SUUICountdownView
- (SUUICountdownView)initWithCountdown:(id)a3 clientContext:(id)a4;
- (id)_newDateDescriptionLabel;
- (id)_newDateLabel;
- (id)_newFlapLabelWithPosition:(int64_t)a3;
- (id)_newNumberSeparatorLabel;
- (int64_t)_currentValue;
- (void)_currentRemainingDays:(int64_t *)a3 hours:(int64_t *)a4 minutes:(int64_t *)a5 seconds:(int64_t *)a6;
- (void)_reload;
- (void)_reloadDateDescriptions:(BOOL)a3;
- (void)_reloadFontSizes;
- (void)_reloadNumber;
- (void)_reloadNumberFlapped;
- (void)_reloadTime;
- (void)_reloadTimeFlapped;
- (void)_setCountdownWithResponse:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)start;
- (void)stop;
@end

@implementation SUUICountdownView

- (SUUICountdownView)initWithCountdown:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = SUUICountdownView;
  v9 = [(SUUICountdownView *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_countdown, a3);
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v10->_numberFormatter;
    v10->_numberFormatter = v11;

    v13 = v10->_numberFormatter;
    v14 = [(SUUICountdown *)v10->_countdown numberFormat];
    if (v14)
    {
      [(NSNumberFormatter *)v13 setPositiveFormat:v14];
    }

    else
    {
      clientContext = v10->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"COUNTDOWN_NUMBER_FORMAT"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"COUNTDOWN_NUMBER_FORMAT" inBundles:0];
      }
      v16 = ;
      [(NSNumberFormatter *)v13 setPositiveFormat:v16];
    }

    if (![(SUUICountdown *)v10->_countdown isLoaded])
    {
      v17 = [(SUUICountdown *)v10->_countdown URL];

      if (v17)
      {
        objc_initWeak(&location, v10);
        v18 = objc_alloc(MEMORY[0x277D69CD8]);
        v19 = [(SUUICountdown *)v10->_countdown URL];
        v20 = [v18 initWithURL:v19];

        v21 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
        [v20 setDataConsumer:v21];

        v22 = [(SUUIClientContext *)v10->_clientContext valueForConfigurationKey:@"sfsuffix"];
        [v20 setStoreFrontSuffix:v22];

        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __53__SUUICountdownView_initWithCountdown_clientContext___block_invoke;
        v29 = &unk_2798FAA60;
        objc_copyWeak(&v30, &location);
        [v20 setOutputBlock:&v26];
        v23 = objc_alloc_init(MEMORY[0x277CCABD8]);
        operationQueue = v10->_operationQueue;
        v10->_operationQueue = v23;

        [(NSOperationQueue *)v10->_operationQueue addOperation:v20, v26, v27, v28, v29];
        objc_destroyWeak(&v30);

        objc_destroyWeak(&location);
      }
    }

    [(SUUICountdownView *)v10 _reload];
    [(SUUICountdownView *)v10 start];
  }

  return v10;
}

void __53__SUUICountdownView_initWithCountdown_clientContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUUICountdownView_initWithCountdown_clientContext___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __53__SUUICountdownView_initWithCountdown_clientContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setCountdownWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SUUICountdownView;
  [(SUUICountdownView *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  if (v4 != v12)
  {
    imageView = self->_imageView;
    if (v12)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        [(UIImageView *)self->_imageView setContentMode:1];
        v9 = self->_imageView;
        v10 = [(SUUICountdownView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

        [(SUUICountdownView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:?];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v11 = self->_imageView;
      self->_imageView = 0;
    }

    v5 = [(SUUICountdownView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)start
{
  if ([(SUUICountdown *)self->_countdown isLoaded])
  {
    [(NSTimer *)self->_timer invalidate];
    v3 = 1.0;
    if (![(SUUICountdown *)self->_countdown type])
    {
      v4 = [(SUUICountdown *)self->_countdown rate];
      if (1.0 / v4 >= 0.400000006)
      {
        v3 = 1.0 / v4;
      }

      else
      {
        v3 = 0.400000006;
      }
    }

    timerTarget = self->_timerTarget;
    if (!timerTarget)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc_init(SUUICountdownViewTimerTarget);
      v7 = self->_timerTarget;
      self->_timerTarget = v6;

      v8 = self->_timerTarget;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __26__SUUICountdownView_start__block_invoke;
      v15 = &unk_2798F67A0;
      objc_copyWeak(&v16, &location);
      [(SUUICountdownViewTimerTarget *)v8 setActionBlock:&v12];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      timerTarget = self->_timerTarget;
    }

    v9 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:timerTarget target:sel_action selector:0 userInfo:1 repeats:{v3, v12, v13, v14, v15}];
    timer = self->_timer;
    self->_timer = v9;

    v11 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v11 addTimer:self->_timer forMode:*MEMORY[0x277CBE738]];
  }
}

void __26__SUUICountdownView_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reload];
}

- (void)stop
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SUUICountdownView;
  [(SUUICountdownView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SUUICountdownView *)self frame];
  self->_factor = v4 / 212.0;
  [(SUUICountdownView *)self _reloadFontSizes];
}

- (void)layoutSubviews
{
  v190 = *MEMORY[0x277D85DE8];
  v181.receiver = self;
  v181.super_class = SUUICountdownView;
  [(SUUICountdownView *)&v181 layoutSubviews];
  [(SUUICountdownView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_imageView)
  {
    [(SUUICountdownView *)self sendSubviewToBack:?];
    [(UIImageView *)self->_imageView setFrame:v4, v6, v8, v10];
  }

  if ([(SUUICountdown *)self->_countdown isLoaded])
  {
    v11 = [(SUUICountdown *)self->_countdown artworkProvider];

    if (v11)
    {
      v12 = [(SUUICountdown *)self->_countdown artworkProvider];
      v13 = [v12 largestArtwork];

      v14 = v8 / [v13 width];
      v15 = [v13 height];
      v16 = v14 * v15;
      if (v16 > 0.0)
      {
        v17 = (v10 - v16) * 0.5;
        v6 = v6 + roundf(v17);
        v10 = v14 * v15;
      }
    }

    v18 = [(SUUICountdown *)self->_countdown type];
    countdown = self->_countdown;
    if (v18)
    {
      if ([(SUUICountdown *)countdown type]!= 1)
      {
        return;
      }

      v20 = [(SUUICountdown *)self->_countdown isFlapped];
      dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
      if (v20)
      {
        dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
        v187[0] = self->_dateDescriptionLabelDay;
        v187[1] = dateDescriptionLabelHour;
        dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
        v187[2] = self->_dateDescriptionLabelMinute;
        v187[3] = dateDescriptionLabelSecond;
        v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:4];
        v159 = [MEMORY[0x277CBEB18] array];
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v156 = 504;
        obj = self->_dateFlapLabels;
        v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v186 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v170;
          v27 = 0.0;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v170 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v169 + 1) + 8 * i);
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v165 objects:v185 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v166;
                v34 = 0.0;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v166 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    [*(*(&v165 + 1) + 8 * j) frame];
                    v34 = v34 + v36;
                  }

                  v32 = [v30 countByEnumeratingWithState:&v165 objects:v185 count:16];
                }

                while (v32);
              }

              else
              {
                v34 = 0.0;
              }

              v37 = [MEMORY[0x277CCABB0] numberWithDouble:v27 + v34 * 0.5];
              [v159 addObject:v37];

              v38 = self->_factor * 7.0;
              v27 = v27 + v34 + roundf(v38);
            }

            v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v186 count:16];
          }

          while (v25);
        }

        else
        {
          v27 = 0.0;
        }

        factor = self->_factor;
        v59 = v157;
        if ([v157 count])
        {
          v100 = 0;
          v101 = factor * 7.0;
          v102 = factor * 6.0;
          v103 = v10 + v6 - roundf(v102);
          v104 = floor((v8 - (v27 - roundf(v101))) * 0.5);
          v105 = v104;
          do
          {
            v106 = [v59 objectAtIndex:{v100, v156}];
            v107 = [v159 objectAtIndex:v100];
            [v106 frame];
            v109 = v108;
            v111 = v110;
            [v107 floatValue];
            v113 = self->_factor * 4.0;
            [v106 setFrame:{floor(v104 + v112 + v109 * -0.5), v103 - v111 - roundf(v113), v109, v111}];
            v114 = [*(&self->super.super.super.isa + v156) objectAtIndex:v100];
            v161 = 0u;
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            v115 = [v114 countByEnumeratingWithState:&v161 objects:v184 count:16];
            if (v115)
            {
              v116 = v115;
              v117 = *v162;
              do
              {
                for (k = 0; k != v116; ++k)
                {
                  if (*v162 != v117)
                  {
                    objc_enumerationMutation(v114);
                  }

                  v119 = *(*(&v161 + 1) + 8 * k);
                  [v119 frame];
                  v121 = v120;
                  v123 = v122;
                  [v106 frame];
                  MinY = CGRectGetMinY(v191);
                  v125 = self->_factor;
                  v126 = v125 * 4.0;
                  *&v125 = v125 * 5.0;
                  [v119 setFrame:{v105, MinY + roundf(v126) - roundf(*&v125) - v123, v121, v123}];
                  [v119 frame];
                  v105 = v105 + v127;
                }

                v116 = [v114 countByEnumeratingWithState:&v161 objects:v184 count:16];
              }

              while (v116);
            }

            v128 = self->_factor * 7.0;
            v105 = v105 + roundf(v128);

            ++v100;
            v59 = v157;
          }

          while (v100 < [v157 count]);
        }

LABEL_116:
        return;
      }

      v52 = self->_dateDescriptionLabelDay;
      if (!dateDescriptionLabelDay)
      {
        v52 = [MEMORY[0x277CBEB68] null];
      }

      v183[0] = v52;
      v53 = self->_dateDescriptionLabelHour;
      v54 = v53;
      if (!v53)
      {
        v54 = [MEMORY[0x277CBEB68] null];
      }

      v183[1] = v54;
      dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
      v56 = dateDescriptionLabelMinute;
      if (!dateDescriptionLabelMinute)
      {
        v56 = [MEMORY[0x277CBEB68] null];
      }

      v183[2] = v56;
      v57 = self->_dateDescriptionLabelSecond;
      v58 = v57;
      if (!v57)
      {
        v58 = [MEMORY[0x277CBEB68] null];
      }

      v183[3] = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:4];
      if (!v57)
      {
      }

      if (!dateDescriptionLabelMinute)
      {
      }

      if (!v53)
      {
      }

      if (!dateDescriptionLabelDay)
      {
      }

      dateLabelDay = self->_dateLabelDay;
      v61 = dateLabelDay;
      if (!dateLabelDay)
      {
        v61 = [MEMORY[0x277CBEB68] null];
      }

      v160 = v61;
      v182[0] = v61;
      dateLabelHour = self->_dateLabelHour;
      v63 = dateLabelHour;
      if (!dateLabelHour)
      {
        v63 = [MEMORY[0x277CBEB68] null];
      }

      v182[1] = v63;
      dateLabelMinute = self->_dateLabelMinute;
      v65 = dateLabelMinute;
      if (!dateLabelMinute)
      {
        v65 = [MEMORY[0x277CBEB68] null];
      }

      v182[2] = v65;
      dateLabelSecond = self->_dateLabelSecond;
      v67 = dateLabelSecond;
      if (!dateLabelSecond)
      {
        v67 = [MEMORY[0x277CBEB68] null];
      }

      v182[3] = v67;
      v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:4];
      if (dateLabelSecond)
      {
        if (dateLabelMinute)
        {
          goto LABEL_68;
        }
      }

      else
      {

        if (dateLabelMinute)
        {
LABEL_68:
          if (dateLabelHour)
          {
            goto LABEL_69;
          }

          goto LABEL_107;
        }
      }

      if (dateLabelHour)
      {
LABEL_69:
        if (dateLabelDay)
        {
LABEL_70:
          v69 = [MEMORY[0x277CBEB18] array];
          if ([v59 count])
          {
            v70 = 0;
            v71 = 0.0;
            do
            {
              v72 = [v59 objectAtIndex:v70];
              v73 = [v68 objectAtIndex:v70];
              v74 = [MEMORY[0x277CBEB68] null];

              if (v73 == v74)
              {
                v80 = [MEMORY[0x277CBEB68] null];
                [v69 addObject:v80];
              }

              else
              {
                [v72 frame];
                v76 = v75;
                [v73 frame];
                if (v76 < v77 + -5.0)
                {
                  v76 = v77 + -5.0;
                }

                v78 = [MEMORY[0x277CCABB0] numberWithDouble:v71 + v76 * 0.5];
                [v69 addObject:v78];

                v79 = self->_factor * 14.0;
                v71 = v71 + v76 + roundf(v79);
              }

              ++v70;
            }

            while (v70 < [v59 count]);
          }

          else
          {
            v71 = 0.0;
          }

          v129 = self->_factor;
          if ([v59 count])
          {
            v130 = 0;
            v131 = v129 * 14.0;
            v132 = v129 * 8.0;
            v133 = v10 + v6 - roundf(v132);
            v134 = floor((v8 - (v71 - roundf(v131))) * 0.5);
            do
            {
              v135 = [v59 objectAtIndex:v130];
              v136 = [v68 objectAtIndex:v130];
              v137 = [v69 objectAtIndex:v130];
              v138 = [MEMORY[0x277CBEB68] null];

              if (v136 != v138)
              {
                [v135 frame];
                v140 = v139;
                v142 = v141;
                [v137 floatValue];
                v144 = self->_factor * 4.0;
                [v135 setFrame:{floor(v134 + v143 - v140 * 0.5), v133 - v142 - roundf(v144), v140, v142}];
                [v136 frame];
                v146 = v145;
                v148 = v147;
                [v137 floatValue];
                v150 = floor(v134 + v149 - v146 * 0.5);
                [v135 frame];
                v151 = CGRectGetMinY(v192);
                v152 = self->_factor;
                v153 = v152 * 4.0;
                v154 = v151 + roundf(v153);
                v155 = v152 * 5.0;
                *&v152 = v152 * 7.0;
                [v136 setFrame:{v150, v154 - roundf(v155) - v148 + roundf(*&v152), v146, v148}];
              }

              ++v130;
            }

            while (v130 < [v59 count]);
          }

          goto LABEL_116;
        }

LABEL_108:

        goto LABEL_70;
      }

LABEL_107:

      if (dateLabelDay)
      {
        goto LABEL_70;
      }

      goto LABEL_108;
    }

    if ([(SUUICountdown *)countdown isFlapped])
    {
      if ([(NSMutableArray *)self->_numberFlapLabels count])
      {
        v39 = 0;
        v40 = 0.0;
        do
        {
          v41 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v39];
          v177 = 0u;
          v178 = 0u;
          v179 = 0u;
          v180 = 0u;
          v42 = [v41 countByEnumeratingWithState:&v177 objects:v189 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v178;
            do
            {
              for (m = 0; m != v43; ++m)
              {
                if (*v178 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                [*(*(&v177 + 1) + 8 * m) frame];
                v40 = v40 + v46;
              }

              v43 = [v41 countByEnumeratingWithState:&v177 objects:v189 count:16];
            }

            while (v43);
          }

          v47 = self->_factor * 7.0;
          v40 = v40 + roundf(v47);

          ++v39;
        }

        while (v39 < [(NSMutableArray *)self->_numberFlapLabels count]);
      }

      else
      {
        v40 = 0.0;
      }

      v81 = self->_factor;
      if ([(NSMutableArray *)self->_numberFlapLabels count])
      {
        v82 = 0;
        v83 = v81 * 8.0;
        v84 = v10 + v6 - roundf(v83);
        v85 = v81 * 7.0;
        v86 = floor((v8 - (v40 - roundf(v85))) * 0.5);
        do
        {
          v87 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v82];
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v88 = [v87 countByEnumeratingWithState:&v173 objects:v188 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v174;
            do
            {
              for (n = 0; n != v89; ++n)
              {
                if (*v174 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(*(&v173 + 1) + 8 * n);
                [v92 frame];
                v94 = v93;
                [v92 setFrame:{v86, v84 - v95}];
                v86 = v86 + v94;
              }

              v89 = [v87 countByEnumeratingWithState:&v173 objects:v188 count:16];
            }

            while (v89);
          }

          if ([(NSMutableArray *)self->_numberSeparatorLabels count]> v82)
          {
            v96 = [(NSMutableArray *)self->_numberSeparatorLabels objectAtIndex:v82];
            [v96 frame];
            [v96 setFrame:{v86, v84 - v97 + 5.0}];
          }

          v98 = self->_factor * 7.0;
          v86 = v86 + roundf(v98);

          ++v82;
        }

        while (v82 < [(NSMutableArray *)self->_numberFlapLabels count]);
      }
    }

    else
    {
      numberLabel = self->_numberLabel;
      if (numberLabel)
      {
        [(UILabel *)numberLabel sizeToFit];
        [(UILabel *)self->_numberLabel frame];
        v50 = self->_factor;
        v51 = v50 * 12.0;
        *&v50 = v50 * 7.0;
        [(UILabel *)self->_numberLabel setFrame:v4, v10 + v6 - v49 - roundf(v51) + roundf(*&v50), v8];
      }
    }
  }
}

- (id)_newDateLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(SUUICountdown *)self->_countdown fontColor];
  [v3 setTextColor:v4];

  v5 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v5];

  [v3 setTextAlignment:1];
  return v3;
}

- (id)_newFlapLabelWithPosition:(int64_t)a3
{
  v5 = [(SUUICountdown *)self->_countdown flapTopColor];
  v6 = [(SUUICountdown *)self->_countdown flapBottomColor];
  v7 = [[SUUICountdownFlapView alloc] initWithPosition:a3 flapTopColor:v5 flapBottomColor:v6];
  v8 = [MEMORY[0x277D75348] clearColor];
  [(SUUICountdownFlapView *)v7 setBackgroundColor:v8];

  v9 = [(SUUICountdown *)self->_countdown fontColor];
  [(SUUICountdownFlapView *)v7 setTextColor:v9];

  return v7;
}

- (id)_newDateDescriptionLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(SUUICountdown *)self->_countdown fontColor];
  if (v4)
  {
    [v3 setTextColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
    [v3 setTextColor:v5];
  }

  v6 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v6];

  [v3 setTextAlignment:1];
  return v3;
}

- (id)_newNumberSeparatorLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(SUUICountdown *)self->_countdown flapTopColor];
  if (v4)
  {
    [v3 setTextColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
    [v3 setTextColor:v5];
  }

  v6 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v6];

  [v3 setTextAlignment:1];
  return v3;
}

- (void)_reload
{
  if ([(SUUICountdown *)self->_countdown isLoaded])
  {
    v3 = [(SUUICountdown *)self->_countdown type];
    countdown = self->_countdown;
    if (v3)
    {
      if ([(SUUICountdown *)countdown type]== 1)
      {
        if ([(SUUICountdown *)self->_countdown isFlapped])
        {
          [(SUUICountdownView *)self _reloadTimeFlapped];
          v5 = self;
          v6 = 0;
        }

        else
        {
          [(SUUICountdownView *)self _reloadTime];
          v5 = self;
          v6 = 1;
        }

        [(SUUICountdownView *)v5 _reloadDateDescriptions:v6];
      }
    }

    else if ([(SUUICountdown *)countdown isFlapped])
    {

      [(SUUICountdownView *)self _reloadNumberFlapped];
    }

    else
    {

      [(SUUICountdownView *)self _reloadNumber];
    }
  }
}

- (void)_reloadNumber
{
  if (!self->_numberLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = self->_numberLabel;
    self->_numberLabel = v3;

    v5 = self->_numberLabel;
    v6 = [(SUUICountdown *)self->_countdown fontColor];
    if (v6)
    {
      [(UILabel *)v5 setTextColor:v6];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v5 setTextColor:v7];
    }

    v8 = self->_numberLabel;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    [(UILabel *)self->_numberLabel setTextAlignment:1];
    [(SUUICountdownView *)self addSubview:self->_numberLabel];
    [(SUUICountdownView *)self setNeedsLayout];
  }

  numberFormatter = self->_numberFormatter;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUUICountdownView _currentValue](self, "_currentValue")}];
  v12 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v11];

  [(UILabel *)self->_numberLabel setText:v12];
}

- (void)_reloadNumberFlapped
{
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_numberFlapLabels)
  {
    v3 = [(NSNumberFormatter *)self->_numberFormatter positiveFormat];
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
    v5 = MEMORY[0x277CBEB18];
    v44 = v4;
    v6 = [v3 componentsSeparatedByCharactersInSet:?];
    v7 = [v5 arrayWithArray:v6];

    [v7 removeObject:&stru_286AECDE0];
    v8 = [MEMORY[0x277CBEB18] array];
    numberSeparatorLabels = self->_numberSeparatorLabels;
    self->_numberSeparatorLabels = v8;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v52;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          v15 = [(SUUICountdownView *)self _newNumberSeparatorLabel];
          [v15 setText:v14];
          [v15 sizeToFit];
          [(SUUICountdownView *)self addSubview:v15];
          [(NSMutableArray *)self->_numberSeparatorLabels addObject:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v11);
    }

    v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
    v17 = [v16 invertedSet];

    v45 = v3;
    v18 = [v3 componentsSeparatedByCharactersInSet:v17];
    v19 = [MEMORY[0x277CBEB18] array];
    numberFlapLabels = self->_numberFlapLabels;
    self->_numberFlapLabels = v19;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          v27 = [MEMORY[0x277CBEB18] array];
          if ([v26 length])
          {
            v28 = 0;
            do
            {
              if ([v26 length] == 1)
              {
                v29 = 3;
              }

              else if (v28)
              {
                if (v28 == [v26 length] - 1)
                {
                  v29 = 2;
                }

                else
                {
                  v29 = 1;
                }
              }

              else
              {
                v29 = 0;
              }

              v30 = [(SUUICountdownView *)self _newFlapLabelWithPosition:v29];
              [(SUUICountdownView *)self addSubview:v30];
              [v27 addObject:v30];

              ++v28;
            }

            while (v28 < [v26 length]);
          }

          [(NSMutableArray *)self->_numberFlapLabels addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v23);
    }
  }

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", -[SUUICountdownView _currentValue](self, "_currentValue")];
  v32 = [MEMORY[0x277CBEB18] array];
  if ([v31 length])
  {
    v33 = 0;
    do
    {
      v34 = [v31 substringWithRange:{v33, 1}];
      [v32 addObject:v34];

      ++v33;
    }

    while (v33 < [v31 length]);
  }

  v35 = [v32 reverseObjectEnumerator];
  v36 = [(NSMutableArray *)self->_numberFlapLabels count]- 1;
  if (v36 >= 0)
  {
    do
    {
      v37 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v36];
      v38 = [v37 count] - 1;
      if (v38 >= 0)
      {
        do
        {
          v39 = [v37 objectAtIndex:v38];
          v40 = [v35 nextObject];
          v41 = v40;
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = @"0";
          }

          [v39 setString:v42];

          --v38;
        }

        while (v38 != -1);
      }
    }

    while (v36-- > 0);
  }
}

- (void)_reloadDateDescriptions:(BOOL)a3
{
  v3 = a3;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  [(SUUICountdownView *)self _currentRemainingDays:&v37 hours:&v36 minutes:&v35 seconds:&v34];
  dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
  if (v37)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (v6)
  {
    if (!dateDescriptionLabelDay)
    {
      v7 = [(SUUICountdownView *)self _newDateDescriptionLabel];
      v8 = self->_dateDescriptionLabelDay;
      self->_dateDescriptionLabelDay = v7;

      v9 = self->_dateDescriptionLabelDay;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"COUNTDOWN_DAYS"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"COUNTDOWN_DAYS" inBundles:0];
      }
      v12 = ;
      [(UILabel *)v9 setText:v12];

      [(UILabel *)self->_dateDescriptionLabelDay sizeToFit];
      [(SUUICountdownView *)self addSubview:self->_dateDescriptionLabelDay];
      goto LABEL_13;
    }
  }

  else if (dateDescriptionLabelDay)
  {
    [(UILabel *)dateDescriptionLabelDay removeFromSuperview];
    v11 = self->_dateDescriptionLabelDay;
    self->_dateDescriptionLabelDay = 0;

LABEL_13:
    [(SUUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
  if (v37 || v36 || !v3)
  {
    if (!dateDescriptionLabelHour)
    {
      v15 = [(SUUICountdownView *)self _newDateDescriptionLabel];
      v16 = self->_dateDescriptionLabelHour;
      self->_dateDescriptionLabelHour = v15;

      v17 = self->_dateDescriptionLabelHour;
      v18 = self->_clientContext;
      if (v18)
      {
        [(SUUIClientContext *)v18 localizedStringForKey:@"COUNTDOWN_HOURS"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"COUNTDOWN_HOURS" inBundles:0];
      }
      v19 = ;
      [(UILabel *)v17 setText:v19];

      [(UILabel *)self->_dateDescriptionLabelHour sizeToFit];
      [(SUUICountdownView *)self addSubview:self->_dateDescriptionLabelHour];
      goto LABEL_24;
    }
  }

  else if (dateDescriptionLabelHour)
  {
    [(UILabel *)dateDescriptionLabelHour removeFromSuperview];
    v14 = self->_dateDescriptionLabelHour;
    self->_dateDescriptionLabelHour = 0;

LABEL_24:
    [(SUUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
  if (v37 || v36 || v35 || !v3)
  {
    if (!dateDescriptionLabelMinute)
    {
      v22 = [(SUUICountdownView *)self _newDateDescriptionLabel];
      v23 = self->_dateDescriptionLabelMinute;
      self->_dateDescriptionLabelMinute = v22;

      v24 = self->_dateDescriptionLabelMinute;
      v25 = self->_clientContext;
      if (v25)
      {
        [(SUUIClientContext *)v25 localizedStringForKey:@"COUNTDOWN_MINUTES"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"COUNTDOWN_MINUTES" inBundles:0];
      }
      v26 = ;
      [(UILabel *)v24 setText:v26];

      [(UILabel *)self->_dateDescriptionLabelMinute sizeToFit];
      [(SUUICountdownView *)self addSubview:self->_dateDescriptionLabelMinute];
      goto LABEL_36;
    }
  }

  else if (dateDescriptionLabelMinute)
  {
    [(UILabel *)dateDescriptionLabelMinute removeFromSuperview];
    v21 = self->_dateDescriptionLabelMinute;
    self->_dateDescriptionLabelMinute = 0;

LABEL_36:
    [(SUUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
  if (v37 || v36 || v35 || v34 || !v3)
  {
    if (dateDescriptionLabelSecond)
    {
      return;
    }

    v29 = [(SUUICountdownView *)self _newDateDescriptionLabel];
    v30 = self->_dateDescriptionLabelSecond;
    self->_dateDescriptionLabelSecond = v29;

    v31 = self->_dateDescriptionLabelSecond;
    v32 = self->_clientContext;
    if (v32)
    {
      [(SUUIClientContext *)v32 localizedStringForKey:@"COUNTDOWN_SECONDS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"COUNTDOWN_SECONDS" inBundles:0];
    }
    v33 = ;
    [(UILabel *)v31 setText:v33];

    [(UILabel *)self->_dateDescriptionLabelSecond sizeToFit];
    [(SUUICountdownView *)self addSubview:self->_dateDescriptionLabelSecond];
  }

  else
  {
    if (!dateDescriptionLabelSecond)
    {
      return;
    }

    [(UILabel *)dateDescriptionLabelSecond removeFromSuperview];
    v28 = self->_dateDescriptionLabelSecond;
    self->_dateDescriptionLabelSecond = 0;
  }

  [(SUUICountdownView *)self setNeedsLayout];
}

- (void)_reloadTime
{
  v29 = 0uLL;
  v27 = 0;
  v28 = 0;
  [(SUUICountdownView *)self _currentRemainingDays:&v29 + 8 hours:&v29 minutes:&v28 seconds:&v27];
  v3 = *(&v29 + 1);
  dateLabelDay = self->_dateLabelDay;
  if (*(&v29 + 1))
  {
    if (!dateLabelDay)
    {
      v5 = [(SUUICountdownView *)self _newDateLabel];
      v6 = self->_dateLabelDay;
      self->_dateLabelDay = v5;

      [(SUUICountdownView *)self addSubview:self->_dateLabelDay];
      [(SUUICountdownView *)self setNeedsLayout];
      dateLabelDay = self->_dateLabelDay;
      v3 = *(&v29 + 1);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v3];
    [(UILabel *)dateLabelDay setText:v7];
  }

  else if (dateLabelDay)
  {
    [(UILabel *)self->_dateLabelDay removeFromSuperview];
    v8 = self->_dateLabelDay;
    self->_dateLabelDay = 0;

    [(SUUICountdownView *)self setNeedsLayout];
  }

  v9 = v29;
  dateLabelHour = self->_dateLabelHour;
  if (v29 == 0)
  {
    if (dateLabelHour)
    {
      [(UILabel *)self->_dateLabelHour removeFromSuperview];
      v14 = self->_dateLabelHour;
      self->_dateLabelHour = 0;

      [(SUUICountdownView *)self setNeedsLayout];
    }
  }

  else
  {
    if (!dateLabelHour)
    {
      v11 = [(SUUICountdownView *)self _newDateLabel];
      v12 = self->_dateLabelHour;
      self->_dateLabelHour = v11;

      [(SUUICountdownView *)self addSubview:self->_dateLabelHour];
      [(SUUICountdownView *)self setNeedsLayout];
      dateLabelHour = self->_dateLabelHour;
      v9 = v29;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v9];
    [(UILabel *)dateLabelHour setText:v13];
  }

  v15 = v28;
  dateLabelMinute = self->_dateLabelMinute;
  if (v29 != 0 || v28)
  {
    if (!dateLabelMinute)
    {
      v18 = [(SUUICountdownView *)self _newDateLabel];
      v19 = self->_dateLabelMinute;
      self->_dateLabelMinute = v18;

      [(SUUICountdownView *)self addSubview:self->_dateLabelMinute];
      [(SUUICountdownView *)self setNeedsLayout];
      dateLabelMinute = self->_dateLabelMinute;
      v15 = v28;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v15];
    [(UILabel *)dateLabelMinute setText:v20];
  }

  else if (dateLabelMinute)
  {
    [(UILabel *)self->_dateLabelMinute removeFromSuperview];
    v17 = self->_dateLabelMinute;
    self->_dateLabelMinute = 0;

    [(SUUICountdownView *)self setNeedsLayout];
  }

  v21 = v27;
  dateLabelSecond = self->_dateLabelSecond;
  if (v29 != 0 || v28 || v27)
  {
    if (!dateLabelSecond)
    {
      v24 = [(SUUICountdownView *)self _newDateLabel];
      v25 = self->_dateLabelSecond;
      self->_dateLabelSecond = v24;

      [(SUUICountdownView *)self addSubview:self->_dateLabelSecond];
      [(SUUICountdownView *)self setNeedsLayout];
      dateLabelSecond = self->_dateLabelSecond;
      v21 = v27;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v21];
    [(UILabel *)dateLabelSecond setText:v26];
  }

  else if (dateLabelSecond)
  {
    [(UILabel *)self->_dateLabelSecond removeFromSuperview];
    v23 = self->_dateLabelSecond;
    self->_dateLabelSecond = 0;

    [(SUUICountdownView *)self setNeedsLayout];
  }
}

- (void)_reloadTimeFlapped
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  [(SUUICountdownView *)self _currentRemainingDays:&v37 hours:&v36 minutes:&v35 seconds:&v34];
  dateFlapLabels = self->_dateFlapLabels;
  if (!dateFlapLabels)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_dateFlapLabels;
    self->_dateFlapLabels = v4;

    v6 = 4;
    do
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = [(SUUICountdownView *)self _newFlapLabelWithPosition:0];
      [(SUUICountdownView *)self addSubview:v8];
      [v7 addObject:v8];

      v9 = [(SUUICountdownView *)self _newFlapLabelWithPosition:2];
      [(SUUICountdownView *)self addSubview:v9];
      [v7 addObject:v9];

      [(NSMutableArray *)self->_dateFlapLabels addObject:v7];
      --v6;
    }

    while (v6);
    dateFlapLabels = self->_dateFlapLabels;
  }

  v10 = [(NSMutableArray *)dateFlapLabels objectAtIndex:0];
  v11 = [v10 objectAtIndex:1];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37 % 10];
  [v11 setString:v12];

  v13 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:0];
  v14 = [v13 objectAtIndex:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37 / 10 % 10];
  [v14 setString:v15];

  v16 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:1];
  v17 = [v16 objectAtIndex:1];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v36 % 10];
  [v17 setString:v18];

  v19 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:1];
  v20 = [v19 objectAtIndex:0];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v36 / 10 % 10];
  [v20 setString:v21];

  v22 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:2];
  v23 = [v22 objectAtIndex:1];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v35 % 10];
  [v23 setString:v24];

  v25 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:2];
  v26 = [v25 objectAtIndex:0];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v35 / 10 % 10];
  [v26 setString:v27];

  v28 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:3];
  v29 = [v28 objectAtIndex:1];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v34 % 10];
  [v29 setString:v30];

  v31 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:3];
  v32 = [v31 objectAtIndex:0];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v34 / 10 % 10];
  [v32 setString:v33];
}

- (void)_reloadFontSizes
{
  v119 = *MEMORY[0x277D85DE8];
  if (self->_factor == 0.0 || ![(SUUICountdown *)self->_countdown isLoaded])
  {
    return;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = self->_numberFlapLabels;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v3)
  {
    v4 = v3;
    v78 = *v107;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v107 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v106 + 1) + 8 * i);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v102 objects:v117 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v103;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v103 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v102 + 1) + 8 * j);
              [v12 sizeThatFits:{self->_factor * 14.0, self->_factor * 32.0}];
              [v12 setFrame:{0.0, 0.0, v13, v14}];
            }

            v9 = [v7 countByEnumeratingWithState:&v102 objects:v117 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v4);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obja = self->_dateFlapLabels;
  v15 = [(NSMutableArray *)obja countByEnumeratingWithState:&v98 objects:v116 count:16];
  if (v15)
  {
    v16 = v15;
    v79 = *v99;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v98 + 1) + 8 * k);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v94 objects:v115 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v95;
          do
          {
            for (m = 0; m != v21; ++m)
            {
              if (*v95 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v94 + 1) + 8 * m);
              [v24 sizeThatFits:{self->_factor * 14.0, self->_factor * 32.0}];
              [v24 setFrame:{0.0, 0.0, v25, v26}];
            }

            v21 = [v19 countByEnumeratingWithState:&v94 objects:v115 count:16];
          }

          while (v21);
        }
      }

      v16 = [(NSMutableArray *)obja countByEnumeratingWithState:&v98 objects:v116 count:16];
    }

    while (v16);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v27 = self->_numberSeparatorLabels;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v90 objects:v114 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v91;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v91 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v90 + 1) + 8 * n);
        v33 = self->_factor * 24.0;
        v34 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v33)];
        [v32 setFont:v34];

        [v32 sizeToFit];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v90 objects:v114 count:16];
    }

    while (v29);
  }

  dateLabelDay = self->_dateLabelDay;
  v36 = dateLabelDay;
  if (!dateLabelDay)
  {
    v36 = [MEMORY[0x277CBEB68] null];
  }

  v80 = v36;
  v113[0] = v36;
  dateLabelHour = self->_dateLabelHour;
  v38 = dateLabelHour;
  if (!dateLabelHour)
  {
    v38 = [MEMORY[0x277CBEB68] null];
  }

  v113[1] = v38;
  dateLabelMinute = self->_dateLabelMinute;
  v40 = dateLabelMinute;
  if (!dateLabelMinute)
  {
    v40 = [MEMORY[0x277CBEB68] null];
  }

  v113[2] = v40;
  dateLabelSecond = self->_dateLabelSecond;
  v42 = dateLabelSecond;
  if (!dateLabelSecond)
  {
    v42 = [MEMORY[0x277CBEB68] null];
  }

  v113[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
  if (dateLabelSecond)
  {
    if (dateLabelMinute)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (dateLabelMinute)
    {
LABEL_48:
      if (dateLabelHour)
      {
        goto LABEL_49;
      }

LABEL_85:

      if (dateLabelDay)
      {
        goto LABEL_50;
      }

      goto LABEL_86;
    }
  }

  if (!dateLabelHour)
  {
    goto LABEL_85;
  }

LABEL_49:
  if (dateLabelDay)
  {
    goto LABEL_50;
  }

LABEL_86:

LABEL_50:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v81 = v43;
  v44 = [v81 countByEnumeratingWithState:&v86 objects:v112 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v87;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v87 != v46)
        {
          objc_enumerationMutation(v81);
        }

        v48 = *(*(&v86 + 1) + 8 * ii);
        v49 = [MEMORY[0x277CBEB68] null];

        if (v48 != v49)
        {
          v50 = [v48 text];
          v51 = self->_factor * 28.0;
          v52 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v51)];
          [v48 setFont:v52];

          [v48 setText:@"00"];
          [v48 sizeToFit];
          [v48 frame];
          [v48 setFrame:?];
          [v48 setText:v50];
        }
      }

      v45 = [v81 countByEnumeratingWithState:&v86 objects:v112 count:16];
    }

    while (v45);
  }

  dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
  v54 = dateDescriptionLabelDay;
  if (!dateDescriptionLabelDay)
  {
    v54 = [MEMORY[0x277CBEB68] null];
  }

  objb = v54;
  v111[0] = v54;
  dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
  v56 = dateDescriptionLabelHour;
  if (!dateDescriptionLabelHour)
  {
    v56 = [MEMORY[0x277CBEB68] null];
  }

  v111[1] = v56;
  dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
  v58 = dateDescriptionLabelMinute;
  if (!dateDescriptionLabelMinute)
  {
    v58 = [MEMORY[0x277CBEB68] null];
  }

  v111[2] = v58;
  dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
  v60 = dateDescriptionLabelSecond;
  if (!dateDescriptionLabelSecond)
  {
    v60 = [MEMORY[0x277CBEB68] null];
  }

  v111[3] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:{4, objb}];
  if (dateDescriptionLabelSecond)
  {
    if (dateDescriptionLabelMinute)
    {
      goto LABEL_69;
    }

LABEL_88:

    if (dateDescriptionLabelHour)
    {
      goto LABEL_70;
    }

LABEL_89:

    goto LABEL_70;
  }

  if (!dateDescriptionLabelMinute)
  {
    goto LABEL_88;
  }

LABEL_69:
  if (!dateDescriptionLabelHour)
  {
    goto LABEL_89;
  }

LABEL_70:
  if (!dateDescriptionLabelDay)
  {
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v82 objects:v110 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v83;
    do
    {
      for (jj = 0; jj != v64; ++jj)
      {
        if (*v83 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v82 + 1) + 8 * jj);
        v68 = [MEMORY[0x277CBEB68] null];

        if (v67 != v68)
        {
          v69 = self->_factor * 14.0;
          v70 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v69)];
          [v67 setFont:v70];

          [v67 sizeToFit];
        }
      }

      v64 = [v62 countByEnumeratingWithState:&v82 objects:v110 count:16];
    }

    while (v64);
  }

  numberLabel = self->_numberLabel;
  v72 = self->_factor * 28.0;
  v73 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v72)];
  [(UILabel *)numberLabel setFont:v73];

  [(SUUICountdownView *)self setNeedsLayout];
}

- (int64_t)_currentValue
{
  v3 = [(SUUICountdown *)self->_countdown initialValue];
  v4 = [(SUUICountdown *)self->_countdown startDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;
  v7 = [(SUUICountdown *)self->_countdown rate];
  v8 = [(SUUICountdown *)self->_countdown initialValue];
  v9 = [(SUUICountdown *)self->_countdown finalValue];
  v10 = -1.0;
  if (v8 < v9)
  {
    v10 = 1.0;
  }

  v11 = (v3 + -(v6 * v7) * v10);

  if (v11 < 0)
  {
    return 0;
  }

  if ([(SUUICountdown *)self->_countdown finalValue]>= v11)
  {
    return v11;
  }

  countdown = self->_countdown;

  return [(SUUICountdown *)countdown finalValue];
}

- (void)_currentRemainingDays:(int64_t *)a3 hours:(int64_t *)a4 minutes:(int64_t *)a5 seconds:(int64_t *)a6
{
  v10 = [(SUUICountdown *)self->_countdown endDate];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  v13 = 0.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  if (a3)
  {
    *a3 = (v13 / 86400.0);
  }

  if (a4)
  {
    *a4 = (v13 / 3600.0) % 24;
  }

  if (a5)
  {
    *a5 = (v13 / 60.0) % 60;
  }

  if (a6)
  {
    *a6 = v13 % 60;
  }
}

- (void)_setCountdownWithResponse:(id)a3 error:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUUICountdown *)self->_countdown updateWithDictionary:v5];
    [(SUUICountdownView *)self _reload];
    [(SUUICountdownView *)self _reloadFontSizes];
    [(SUUICountdownView *)self start];
  }
}

@end