@interface HKEmergencyCardSummaryTableItem
- (BOOL)hasPresentableData;
- (UIEdgeInsets)separatorInset;
- (id)_cell;
- (id)initInEditMode:(BOOL)a3;
- (void)setData:(id)a3;
@end

@implementation HKEmergencyCardSummaryTableItem

- (id)initInEditMode:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(HKEmergencyCardSummaryTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardSummaryTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:v3];
}

- (BOOL)hasPresentableData
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 pictureData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HKEmergencyCardTableItem *)self data];
    v7 = [v6 name];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(HKEmergencyCardTableItem *)self data];
      v9 = [v8 gregorianBirthday];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v10 = [(HKEmergencyCardTableItem *)self data];
        v11 = [v10 height];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v17 = [(HKEmergencyCardTableItem *)self data];
          v12 = [v17 weight];
          if (v12)
          {
            v5 = 1;
          }

          else
          {
            v16 = [(HKEmergencyCardTableItem *)self data];
            if ([v16 bloodType])
            {
              v5 = 1;
            }

            else
            {
              v15 = [(HKEmergencyCardTableItem *)self data];
              v13 = [v15 isOrganDonor];
              v5 = v13 != 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (id)_cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = objc_alloc_init(HKMedicalIDPersonSummaryCell);
    v5 = self->_cell;
    self->_cell = v4;

    [(HKMedicalIDPersonSummaryCell *)self->_cell setAccessoryType:[(HKEmergencyCardTableItem *)self isInEditMode]];
    cell = self->_cell;
  }

  return cell;
}

- (void)setData:(id)a3
{
  v13.receiver = self;
  v13.super_class = HKEmergencyCardSummaryTableItem;
  v4 = a3;
  [(HKEmergencyCardTableItem *)&v13 setData:v4];
  v5 = [(HKEmergencyCardSummaryTableItem *)self _cell:v13.receiver];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v4 pictureData];
  v8 = [v6 imageWithData:v7];
  [v5 setPicture:v8];

  v9 = [v4 name];
  [v5 setName:v9];

  v10 = [v4 gregorianBirthday];
  [v5 setGregorianBirthday:v10];

  v11 = [v4 isOrganDonor];
  [v5 setOrganDonationStatus:v11];

  [v5 setShareOnLockScreen:{objc_msgSend(v4, "isDisabled") ^ 1}];
  v12 = [v4 shareDuringEmergency];

  [v5 setShareDuringEmergencyCalls:v12];
  [v5 updateSubviewsFromData];
}

- (UIEdgeInsets)separatorInset
{
  v2 = 999.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (void)initInEditMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardSummaryTableItem.m" lineNumber:18 description:@"HKEmergencyCardSummaryTableItem does not support edit mode"];
}

@end