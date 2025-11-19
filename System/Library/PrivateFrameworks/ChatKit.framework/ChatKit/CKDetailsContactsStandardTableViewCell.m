@interface CKDetailsContactsStandardTableViewCell
+ (double)preferredHeight;
- (CKDetailsContactsStandardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_hideAllButtons;
- (void)_updateVisibleButtons;
- (void)layoutSubviews;
- (void)setShowsLocation:(BOOL)a3;
- (void)setShowsTUConversationStatus:(BOOL)a3;
@end

@implementation CKDetailsContactsStandardTableViewCell

+ (double)preferredHeight
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 detailsContactCellMinimumHeight];
  v4 = v3;

  return v4;
}

- (CKDetailsContactsStandardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = CKDetailsContactsStandardTableViewCell;
  v4 = [(CKDetailsContactsTableViewCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [v6 setLineBreakMode:4];

    v7 = [(CKDetailsContactsStandardTableViewCell *)v5 contentView];
    v8 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [v7 addSubview:v8];

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 detailsViewContactImageDiameter];
    v11 = v10;
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 detailsViewContactImageDiameter];
    v14 = v13;
    v15 = [(CKDetailsContactsTableViewCell *)v5 contactAvatarView];
    [v15 setFrame:{0.0, 0.0, v11, v14}];

    v16 = [(CKDetailsContactsStandardTableViewCell *)v5 contentView];
    v17 = [(CKDetailsContactsTableViewCell *)v5 contactAvatarView];
    [v16 addSubview:v17];
  }

  return v5;
}

- (void)layoutSubviews
{
  v136.receiver = self;
  v136.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v136 layoutSubviews];
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 detailsContactCellButtonWidth];
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 detailsContactCellButtonHeight];
  v9 = v8;

  v10 = 3.0;
  if (CKIsRunningInMacCatalyst())
  {
    if (v3)
    {
LABEL_3:
      v11 = ceil(v10);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [v12 bounds];
    if (CGRectGetWidth(v137) > 320.0)
    {
      v10 = 8.0;
    }

    else
    {
      v10 = 6.0;
    }

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v13 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  [v13 bounds];
  v11 = ceil(v14 - v10);

LABEL_9:
  if (CKIsRunningInMacCatalyst())
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 detailsInterGroupButtonPadding];
    v17 = v16 + v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
  v19 = [v18 count];

  v135 = v10;
  if (v19)
  {
    v20 = 0;
    v21 = ceil(v6 + v10 * 2.0);
    if (v3)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    v23 = ceil(v6);
    if (v3)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v23;
    }

    v25 = floor(v6 * 0.5);
    do
    {
      if (v20)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v11 = v11 + v26;
      v27 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
      v28 = [v27 objectAtIndex:v20];

      [v28 setBounds:{0.0, 0.0, v6, v9}];
      [(CKDetailsContactsStandardTableViewCell *)self bounds];
      v30 = floor(v29 * 0.5);
      v31 = v25 + v11 - v17;
      if (v3)
      {
        v31 = v17 + v11 - v25;
      }

      [v28 setCenter:{v31, v30}];
      v32 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

      [v28 setHidden:v32 != 0];
      ++v20;
      v33 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
      v34 = [v33 count];
    }

    while (v20 < v34);
  }

  v35 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [v35 frame];
  v37 = v36;
  v39 = v38;

  v40 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  v41 = v40;
  if (v3)
  {
    [v40 bounds];
    v43 = v42;
    v44 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [v44 layoutMargins];
    v46 = v43 - v45 - v37;
    v47 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [v47 bounds];
    v49 = (v48 - v39) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v50 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v50 = 1.0;
    }

    v51 = floor(v46 * v50) / v50;
    v52 = floor(v49 * v50) / v50;
  }

  else
  {
    [v40 layoutMargins];
    v54 = v53;
    v44 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [v44 bounds];
    v56 = (v55 - v39) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v57 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v57 = 1.0;
    }

    v51 = floor(v54 * v57) / v57;
    v52 = floor(v56 * v57) / v57;
  }

  v58 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [v58 setFrame:{v51, v52, v37, v39}];

  v59 = [(CKDetailsContactsTableViewCell *)self entityName];
  v60 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [v60 setText:v59];

  v61 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [v61 setNumberOfLines:1];

  if (v3)
  {
    v62 = +[CKUIBehavior sharedBehaviors];
    [v62 detailsContactAvatarLabelSpacing];
    v64 = v51 - v63;

    v65 = ceil(v64 - (v17 + v11 + v135 * 2.0));
    v66 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [v66 sizeThatFits:{v65, v67}];
    v69 = v68;
    v71 = v70;

    if (v69 >= v65)
    {
      v72 = v65;
    }

    else
    {
      v72 = v69;
    }

    v73 = +[CKUIBehavior sharedBehaviors];
    [v73 detailsContactAvatarLabelSpacing];
    v75 = ceil(v51 - v74 - v72);
  }

  else
  {
    v76 = +[CKUIBehavior sharedBehaviors];
    [v76 detailsContactAvatarLabelSpacing];
    v75 = ceil(v37 + v51 + v77);

    v65 = ceil(v11 - v75 + v135 * -2.0 - v17);
    v78 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [v78 sizeThatFits:{v65, v79}];
    v72 = v80;
    v71 = v81;

    if (v72 >= v65)
    {
      v72 = v65;
    }
  }

  if ([(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
  {
    v82 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [v82 setNumberOfLines:1];

    v83 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [v83 sizeThatFits:{v65, v84}];
    v86 = v85;
    v88 = v87;

    [(CKDetailsContactsStandardTableViewCell *)self frame];
    v90 = (v89 - v71 - v88) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v91 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v91 = 1.0;
    }

    v92 = floor(v90 * v91) / v91;
    if (v86 < v65)
    {
      v65 = v86;
    }

    v138.origin.x = v75;
    v138.origin.y = v92;
    v138.size.width = v72;
    v138.size.height = v71;
    MaxY = CGRectGetMaxY(v138);
    if (v3)
    {
      v94 = v75 - (v65 - v72);
    }

    else
    {
      v94 = v75;
    }

    v95 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
LABEL_66:
    v107 = v95;
    [v95 setFrame:{v94, MaxY, v65, v88}];

    goto LABEL_68;
  }

  if ([(CKDetailsContactsTableViewCell *)self showsLocation])
  {
    v96 = [(CKDetailsContactsTableViewCell *)self locationString];
    v97 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [v97 setText:v96];

    v98 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [v98 setNumberOfLines:1];

    v99 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [v99 sizeThatFits:{v65, v100}];
    v102 = v101;
    v88 = v103;

    [(CKDetailsContactsStandardTableViewCell *)self frame];
    v105 = (v104 - v71 - v88) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v106 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v106 = 1.0;
    }

    v92 = floor(v105 * v106) / v106;
    if (v102 < v65)
    {
      v65 = v102;
    }

    v139.origin.x = v75;
    v139.origin.y = v92;
    v139.size.width = v72;
    v139.size.height = v71;
    MaxY = CGRectGetMaxY(v139);
    if (v3)
    {
      v94 = v75 - (v65 - v72);
    }

    else
    {
      v94 = v75;
    }

    v95 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    goto LABEL_66;
  }

  [(CKDetailsContactsStandardTableViewCell *)self frame];
  v71 = v108;
  v92 = 0.0;
LABEL_68:
  v109 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [v109 setFrame:{v75, v92, v72, v71}];

  v110 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

  if (v110)
  {
    v111 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
    v112 = [v111 lastObject];

    v113 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [v112 center];
    [v113 setCenter:?];

    v114 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [v114 startAnimating];
  }

  v115 = [(CKDetailsCell *)self topSeperator];
  [v115 frame];
  v117 = v116;
  v119 = v118;
  v121 = v120;

  v122 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  [v122 layoutMargins];
  v124 = v123;
  v125 = +[CKUIBehavior sharedBehaviors];
  [v125 detailsContactAvatarLabelSpacing];
  v127 = v124 + v126;
  v128 = +[CKUIBehavior sharedBehaviors];
  [v128 detailsViewContactImageDiameter];
  v130 = v127 + v129;

  v131 = v130;
  if (v3)
  {
    v132 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [v132 layoutMargins];
    v131 = v133;
  }

  v134 = [(CKDetailsCell *)self topSeperator];
  [v134 setFrame:{v131, v117, v119 - v130, v121}];
}

- (void)setShowsLocation:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v10 setShowsLocation:a3];
  v4 = [(CKDetailsContactsTableViewCell *)self locationLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    v7 = [v6 superview];

    if (!v7)
    {
      v8 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
      v9 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [v8 addSubview:v9];
    }
  }
}

- (void)setShowsTUConversationStatus:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v8 setShowsTUConversationStatus:a3];
  v4 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
  v5 = [v4 superview];

  if (!v5)
  {
    v6 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    v7 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [v6 addSubview:v7];
  }
}

- (void)_updateVisibleButtons
{
  visibleButtons = self->_visibleButtons;
  if (!visibleButtons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_visibleButtons;
    self->_visibleButtons = v4;

    visibleButtons = self->_visibleButtons;
  }

  [(NSMutableArray *)visibleButtons removeAllObjects];
  if ([(CKDetailsContactsTableViewCell *)self showPhoneButton])
  {
    v6 = self->_visibleButtons;
    v7 = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    v9 = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [v8 addSubview:v9];
  }

  else
  {
    v8 = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [v8 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showMessageButton])
  {
    v10 = self->_visibleButtons;
    v11 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [(NSMutableArray *)v10 addObject:v11];

    v12 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    v13 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [v12 addSubview:v13];
  }

  else
  {
    v12 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [v12 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showFaceTimeVideoButton])
  {
    v14 = self->_visibleButtons;
    v15 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [(NSMutableArray *)v14 addObject:v15];

    v16 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    v17 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [v16 addSubview:v17];
  }

  else
  {
    v16 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [v16 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showScreenSharingButton])
  {
    v18 = self->_visibleButtons;
    v19 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [(NSMutableArray *)v18 addObject:v19];

    v20 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    v21 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [v20 addSubview:v21];
  }

  else
  {
    v20 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [v20 removeFromSuperview];
  }

  [(CKDetailsContactsStandardTableViewCell *)self layoutSubviews];
}

- (void)_hideAllButtons
{
  visibleButtons = self->_visibleButtons;
  if (!visibleButtons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_visibleButtons;
    self->_visibleButtons = v4;

    visibleButtons = self->_visibleButtons;
  }

  [(NSMutableArray *)visibleButtons removeAllObjects];
  if ([(CKDetailsContactsTableViewCell *)self showPhoneButton])
  {
    v6 = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [v6 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showMessageButton])
  {
    v7 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [v7 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showFaceTimeVideoButton])
  {
    v8 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [v8 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showScreenSharingButton])
  {
    v9 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [v9 removeFromSuperview];
  }

  [(CKDetailsContactsStandardTableViewCell *)self layoutSubviews];
}

@end